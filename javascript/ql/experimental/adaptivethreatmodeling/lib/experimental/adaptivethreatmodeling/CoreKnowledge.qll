/*
 * For internal use only.
 *
 * Provides predicates that expose the knowledge of models
 * in the core CodeQL JavaScript libraries.
 */

private import javascript
private import semmle.javascript.security.dataflow.XxeCustomizations
private import semmle.javascript.security.dataflow.RemotePropertyInjectionCustomizations
private import semmle.javascript.security.dataflow.TypeConfusionThroughParameterTamperingCustomizations
private import semmle.javascript.security.dataflow.ZipSlipCustomizations
private import semmle.javascript.security.dataflow.TaintedPathCustomizations
private import semmle.javascript.security.dataflow.CleartextLoggingCustomizations
private import semmle.javascript.security.dataflow.XpathInjectionCustomizations
private import semmle.javascript.security.dataflow.Xss::Shared as Xss
private import semmle.javascript.security.dataflow.StackTraceExposureCustomizations
private import semmle.javascript.security.dataflow.ClientSideUrlRedirectCustomizations
private import semmle.javascript.security.dataflow.CodeInjectionCustomizations
private import semmle.javascript.security.dataflow.RequestForgeryCustomizations
private import semmle.javascript.security.dataflow.CorsMisconfigurationForCredentialsCustomizations
private import semmle.javascript.security.dataflow.ShellCommandInjectionFromEnvironmentCustomizations
private import semmle.javascript.security.dataflow.DifferentKindsComparisonBypassCustomizations
private import semmle.javascript.security.dataflow.CommandInjectionCustomizations
private import semmle.javascript.security.dataflow.PrototypePollutionCustomizations
private import semmle.javascript.security.dataflow.UnvalidatedDynamicMethodCallCustomizations
private import semmle.javascript.security.dataflow.TaintedFormatStringCustomizations
private import semmle.javascript.security.dataflow.NosqlInjectionCustomizations
private import semmle.javascript.security.dataflow.PostMessageStarCustomizations
private import semmle.javascript.security.dataflow.RegExpInjectionCustomizations
private import semmle.javascript.security.dataflow.SqlInjectionCustomizations
private import semmle.javascript.security.dataflow.InsecureRandomnessCustomizations
private import semmle.javascript.security.dataflow.XmlBombCustomizations
private import semmle.javascript.security.dataflow.InsufficientPasswordHashCustomizations
private import semmle.javascript.security.dataflow.HardcodedCredentialsCustomizations
private import semmle.javascript.security.dataflow.FileAccessToHttpCustomizations
private import semmle.javascript.security.dataflow.UnsafeDynamicMethodAccessCustomizations
private import semmle.javascript.security.dataflow.UnsafeDeserializationCustomizations
private import semmle.javascript.security.dataflow.HardcodedDataInterpretedAsCodeCustomizations
private import semmle.javascript.security.dataflow.ServerSideUrlRedirectCustomizations
private import semmle.javascript.security.dataflow.IndirectCommandInjectionCustomizations
private import semmle.javascript.security.dataflow.ConditionalBypassCustomizations
private import semmle.javascript.security.dataflow.HttpToFileAccessCustomizations
private import semmle.javascript.security.dataflow.BrokenCryptoAlgorithmCustomizations
private import semmle.javascript.security.dataflow.LoopBoundInjectionCustomizations
private import semmle.javascript.security.dataflow.CleartextStorageCustomizations

/**
 * Holds if the node `n` is a known sink in a modeled library, or a sibling-argument of such a sink.
 */
predicate isArgumentToKnownLibrarySinkFunction(DataFlow::Node n) {
  exists(DataFlow::InvokeNode invk, DataFlow::Node known |
    invk.getAnArgument() = n and invk.getAnArgument() = known and isKnownLibrarySink(known)
  )
}

/**
 * Holds if the node `n` is a known sink for the external API security query.
 *
 * This corresponds to known sinks from security queries whose sources include remote flow and
 * DOM-based sources.
 */
predicate isKnownExternalApiQuerySink(DataFlow::Node n) {
  n instanceof Xxe::Sink or
  n instanceof TaintedPath::Sink or
  n instanceof XpathInjection::Sink or
  n instanceof Xss::Sink or
  n instanceof ClientSideUrlRedirect::Sink or
  n instanceof CodeInjection::Sink or
  n instanceof RequestForgery::Sink or
  n instanceof CorsMisconfigurationForCredentials::Sink or
  n instanceof CommandInjection::Sink or
  n instanceof PrototypePollution::Sink or
  n instanceof UnvalidatedDynamicMethodCall::Sink or
  n instanceof TaintedFormatString::Sink or
  n instanceof NosqlInjection::Sink or
  n instanceof PostMessageStar::Sink or
  n instanceof RegExpInjection::Sink or
  n instanceof SqlInjection::Sink or
  n instanceof XmlBomb::Sink or
  n instanceof ZipSlip::Sink or
  n instanceof UnsafeDeserialization::Sink or
  n instanceof ServerSideUrlRedirect::Sink or
  n instanceof CleartextStorage::Sink or
  n instanceof HttpToFileAccess::Sink
}

/** DEPRECATED: Alias for isKnownExternalApiQuerySink */
deprecated predicate isKnownExternalAPIQuerySink = isKnownExternalApiQuerySink/1;

/**
 * Holds if the node `n` is a known sink in a modeled library.
 */
predicate isKnownLibrarySink(DataFlow::Node n) {
  isKnownExternalApiQuerySink(n) or
  n instanceof CleartextLogging::Sink or
  n instanceof StackTraceExposure::Sink or
  n instanceof ShellCommandInjectionFromEnvironment::Sink or
  n instanceof InsecureRandomness::Sink or
  n instanceof FileAccessToHttp::Sink or
  n instanceof IndirectCommandInjection::Sink
}

/**
 * Holds if the node `n` is known as the predecessor in a modeled flow step.
 */
predicate isKnownStepSrc(DataFlow::Node n) {
  TaintTracking::sharedTaintStep(n, _) or
  DataFlow::SharedFlowStep::step(n, _) or
  DataFlow::SharedFlowStep::step(n, _, _, _)
}
