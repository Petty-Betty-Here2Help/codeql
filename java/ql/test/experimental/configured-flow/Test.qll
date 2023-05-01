private import java
private import semmle.code.java.dataflow.DataFlow
private import semmle.code.java.dataflow.ExternalFlow
private import semmle.code.java.dataflow.TaintTracking

private module ThreatModelConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) { sourceNode(source, _) }

  predicate isSink(DataFlow::Node sink) { sinkNode(sink, _) }
}

module ThreatModel = TaintTracking::Global<ThreatModelConfig>;
