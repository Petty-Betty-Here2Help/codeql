/*
 * For internal use only.
 *
 * Maps ML-powered queries to their `EndpointType` for clearer labelling while evaluating ML model during training.
 */

import experimental.adaptivethreatmodeling.NosqlInjectionATM as NosqlInjectionATM
import experimental.adaptivethreatmodeling.SqlInjectionATM as SqlInjectionATM
import experimental.adaptivethreatmodeling.TaintedPathATM as TaintedPathATM
import experimental.adaptivethreatmodeling.XssThroughDomATM as XssThroughDomATM
import experimental.adaptivethreatmodeling.AdaptiveThreatModeling

from string queryName, AtmConfig c, EndpointType e
where
  (
    queryName = "SqlInjection" and
    c instanceof SqlInjectionATM::SqlInjectionAtmConfig
    or
    queryName = "NosqlInjection" and
    c instanceof NosqlInjectionATM::NosqlInjectionAtmConfig
    or
    queryName = "TaintedPath" and
    c instanceof TaintedPathATM::TaintedPathAtmConfig
    or
    queryName = "XssThroughDom" and c instanceof XssThroughDomATM::XssThroughDomAtmConfig
  ) and
  e = c.getASinkEndpointType()
select queryName, e.getEncoding() as label
