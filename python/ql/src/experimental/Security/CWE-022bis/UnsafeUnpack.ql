/**
 * @name Arbitrary file write during a tarball extraction from a user controlled source
 * @description Extracting files from a potentially malicious tarball using `shutil.unpack_archive()` without validating
 *              that the destination file path is within the destination directory can cause files outside
 *              the destination directory to be overwritten. More precisely, if the tarball comes from a user controlled
 *              location either a remote one or cli argument.
 * @kind path-problem
 * @id py/unsafe-unpacking
 * @problem.severity error
 * @security-severity 7.5
 * @precision high
 * @tags security
 *       external/cwe/cwe-022
 */

import python
import semmle.python.Concepts
import semmle.python.dataflow.new.internal.DataFlowPublic
import semmle.python.ApiGraphs
import DataFlow::PathGraph
import semmle.python.dataflow.new.TaintTracking
import semmle.python.frameworks.Stdlib

class UnsafeUnpackingConfig extends TaintTracking::Configuration {
  UnsafeUnpackingConfig() { this = "UnsafeUnpackingConfig" }

  override predicate isSource(DataFlow::Node source) {
    // A source coming from a remote location
    exists(Http::Client::Request request | source = request)
    or
    //A source coming from a CLI argparse module
    exists(Node o, API::Node ap, MethodCallNode args |
      ap = API::moduleImport("argparse").getMember("ArgumentParser").getACall().getReturn() and
      args = ap.getMember("parse_args").getACall() and
      args.flowsTo(o) and
      source.(AttrRead).accesses(o, any(string s))
    )
    or
    // A source catching a S3 filename download
    exists(API::Node s3 | source = s3.getMember("download_file").getACall().getArg(2))
  }

  override predicate isSink(DataFlow::Node sink) {
    // A sink capturing method calls to `unpack_archive`.
    sink = API::moduleImport("shutil").getMember("unpack_archive").getACall().getArg(0)
  }

  override predicate isAdditionalTaintStep(DataFlow::Node nodeFrom, DataFlow::Node nodeTo) {
    (
      // Writing the response data to the archive
      exists(Stdlib::FileLikeObject::InstanceSource is, Node f, MethodCallNode mc |
        is.flowsTo(f) and
        mc.getMethodName() = "write" and
        f = mc.getObject() and
        nodeFrom = mc.getArg(0) and
        nodeTo = is.(CallCfgNode).getArg(0)
      )
      or
      // Copying the response data to the archive
      exists(Stdlib::FileLikeObject::InstanceSource is, Node f, MethodCallNode mc |
        is.flowsTo(f) and
        mc = API::moduleImport("shutil").getMember("copyfileobj").getACall() and
        f = mc.getArg(1) and
        nodeFrom = mc.getArg(0) and
        nodeTo = is.(CallCfgNode).getArg(0)
      )
      or
      // Reading the response
      exists(MethodCallNode mc |
        nodeFrom = mc.getObject() and
        mc.getMethodName() = "read" and
        mc.flowsTo(nodeTo)
      )
      or
      // Accessing the name or raw content
      exists(AttrRead ar | ar.accesses(nodeFrom, ["name", "raw"]) and ar.flowsTo(nodeTo))
      or
      //Use of join of filename
      exists(API::CallNode mcn |
        mcn = API::moduleImport("os").getMember("path").getMember("join").getACall() and
        nodeFrom = mcn.getArg(1) and
        mcn.flowsTo(nodeTo)
      )
      or
      // Read by chunks
      exists(MethodCallNode mc |
        nodeFrom = mc.getObject() and mc.getMethodName() = "chunks" and mc.flowsTo(nodeTo)
      )
      or
      // Considering the use of closing()
      exists(API::CallNode closing |
        closing = API::moduleImport("contextlib").getMember("closing").getACall() and
        closing.flowsTo(nodeTo) and
        nodeFrom = closing.getArg(0)
      )
    )
  }
}

from UnsafeUnpackingConfig config, DataFlow::PathNode source, DataFlow::PathNode sink
where config.hasFlowPath(source, sink)
select sink.getNode(), source, sink,
  "Unsafe extraction from a malicious tarball retrieved from a remote location."
