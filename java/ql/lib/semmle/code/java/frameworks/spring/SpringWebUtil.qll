/** Provides models of taint flow in `org.springframework.web.util` */

import java
private import semmle.code.java.dataflow.ExternalFlow

private class FlowSummaries extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.springframework.web.util;UriBuilder;true;build;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriBuilder;true;build;(Map);;Argument[0].MapValue;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;fragment;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;fragment;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;host;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;host;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;path;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;path;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;pathSegment;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;pathSegment;;;Argument[0].ArrayElement;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;port;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;port;(java.lang.String);;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;query;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;query;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParam;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;queryParam;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParam;(String,Collection);;Argument[1].Element;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParam;(String,Object[]);;Argument[1].ArrayElement;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParamIfPresent;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;queryParamIfPresent;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParamIfPresent;;;Argument[1].Element;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParams;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;queryParams;;;Argument[0].MapKey;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;queryParams;;;Argument[0].MapValue.Element;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replacePath;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;replacePath;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQuery;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQuery;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParam;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParam;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParam;(String,Collection);;Argument[1].Element;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParam;(String,Object[]);;Argument[1].ArrayElement;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParams;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParams;;;Argument[0].MapKey;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;replaceQueryParams;;;Argument[0].MapValue.Element;Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;scheme;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;scheme;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilder;true;userInfo;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriBuilder;true;userInfo;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriBuilderFactory;true;builder;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriBuilderFactory;true;uriString;;;Argument[-1..0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents$UriTemplateVariables;true;getValue;;;Argument[-1].MapValue;ReturnValue;value;manual",
        "org.springframework.web.util;UriTemplateHandler;true;expand;;;Argument[-1..0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriTemplateHandler;true;expand;(String,Map);;Argument[1].MapValue;ReturnValue;taint;manual",
        "org.springframework.web.util;UriTemplateHandler;true;expand;(String,Object[]);;Argument[1].ArrayElement;ReturnValue;taint;manual",
        "org.springframework.web.util;AbstractUriTemplateHandler;true;getBaseUrl;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;AbstractUriTemplateHandler;true;setBaseUrl;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;AbstractUriTemplateHandler;true;setDefaultUriVariables;;;Argument[0];Argument[-1];taint;manual",
        // writing to a `Request` or `Response` currently doesn't propagate taint to the object itself.
        "org.springframework.web.util;ContentCachingRequestWrapper;false;ContentCachingRequestWrapper;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;ContentCachingRequestWrapper;false;getContentAsByteArray;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;ContentCachingResponseWrapper;false;ContentCachingResponseWrapper;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;ContentCachingResponseWrapper;false;getContentAsByteArray;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;ContentCachingResponseWrapper;false;getContentInputStream;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;DefaultUriBuilderFactory;false;DefaultUriBuilderFactory;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;DefaultUriBuilderFactory;false;builder;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;DefaultUriBuilderFactory;false;getDefaultUriVariables;;;Argument[-1];ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;DefaultUriBuilderFactory;false;setDefaultUriVariables;;;Argument[0].MapValue;Argument[-1];taint;manual",
        "org.springframework.web.util;DefaultUriBuilderFactory;false;uriString;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;HtmlUtils;false;htmlEscape;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;HtmlUtils;false;htmlEscapeDecimal;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;HtmlUtils;false;htmlEscapeHex;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;HtmlUtils;false;htmlUnescape;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;ServletContextPropertyUtils;false;resolvePlaceholders;;;Argument[0..1];ReturnValue;taint;manual",
        "org.springframework.web.util;ServletRequestPathUtils;false;getCachedPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;ServletRequestPathUtils;false;getCachedPathValue;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;ServletRequestPathUtils;false;getParsedRequestPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;ServletRequestPathUtils;false;parseAndCache;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;ServletRequestPathUtils;false;setParsedRequestPath;;;Argument[0];Argument[1];taint;manual",
        "org.springframework.web.util;UriComponents;false;UriComponents;;;Argument[0..1];Argument[-1];taint;manual",
        "org.springframework.web.util;UriComponents;false;copyToUriComponentsBuilder;;;Argument[-1];Argument[0];taint;manual",
        "org.springframework.web.util;UriComponents;false;encode;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;expand;(Map);;Argument[0].MapValue;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;expand;(Object[]);;Argument[0].ArrayElement;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;expand;(UriTemplateVariables);;Argument[0].MapValue;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getFragment;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getHost;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getPath;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getPathSegments;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getQuery;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getQueryParams;;;Argument[-1];ReturnValue.MapKey;taint;manual",
        "org.springframework.web.util;UriComponents;false;getQueryParams;;;Argument[-1];ReturnValue.MapValue.Element;taint;manual",
        "org.springframework.web.util;UriComponents;false;getScheme;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getSchemeSpecificPart;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;getUserInfo;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;toUri;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;toUriString;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;toString;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponents;false;normalize;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;build;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;build;(Map);;Argument[0].MapValue;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;build;(Object[]);;Argument[0].ArrayElement;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;buildAndExpand;(Map);;Argument[0].MapValue;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;buildAndExpand;(Object[]);;Argument[0].ArrayElement;ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;cloneBuilder;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;encode;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;fromHttpRequest;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;fromHttpUrl;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;fromOriginHeader;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;fromPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;fromUri;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;fromUriString;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;parseForwardedFor;;;Argument[0..1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;schemeSpecificPart;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;schemeSpecificPart;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;toUriString;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;uri;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;uri;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;uriComponents;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;uriComponents;;;Argument[0];Argument[-1];taint;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;uriVariables;;;Argument[-1];ReturnValue;value;manual",
        "org.springframework.web.util;UriComponentsBuilder;false;uriVariables;;;Argument[0].MapValue;Argument[-1];taint;manual",
        "org.springframework.web.util;UriTemplate;false;expand;(Map);;Argument[0].MapValue;ReturnValue;taint;manual",
        "org.springframework.web.util;UriTemplate;false;expand;(Object[]);;Argument[0].ArrayElement;ReturnValue;taint;manual",
        "org.springframework.web.util;UriTemplate;false;getVariableNames;;;Argument[-1];ReturnValue.Element;taint;manual",
        "org.springframework.web.util;UriTemplate;false;match;;;Argument[0];ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;UriTemplate;false;toString;;;Argument[-1];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;decode;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encode;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeAuthority;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeFragment;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeHost;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodePath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodePathSegment;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodePort;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeQuery;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeQueryParam;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeQueryParams;;;Argument[0].MapKey;ReturnValue.MapKey;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeQueryParams;;;Argument[0].MapValue;ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeScheme;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeUriVariables;(Map);;Argument[0].MapValue;ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeUriVariables;(Map);;Argument[0].MapKey;ReturnValue.MapKey;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeUriVariables;(Object[]);;Argument[0].ArrayElement;ReturnValue.ArrayElement;taint;manual",
        "org.springframework.web.util;UriUtils;false;encodeUserInfo;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UriUtils;false;extractFileExtension;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;decodeMatrixVariables;;;Argument[1].MapKey;ReturnValue.MapKey;value;manual",
        "org.springframework.web.util;UrlPathHelper;false;decodeMatrixVariables;;;Argument[1].MapValue;ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;decodePathVariables;;;Argument[1].MapKey;ReturnValue.MapKey;value;manual",
        "org.springframework.web.util;UrlPathHelper;false;decodePathVariables;;;Argument[1].MapValue;ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;decodeRequestString;;;Argument[1];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getContextPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getOriginatingContextPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getOriginatingQueryString;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getOriginatingRequestUri;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getPathWithinApplication;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getPathWithinServletMapping;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getRequestUri;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getResolvedLookupPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;getServletPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;removeSemicolonContent;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;UrlPathHelper;false;resolveAndCacheLookupPath;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;findParameterValue;(Map,String);;Argument[0].MapValue;ReturnValue;value;manual",
        "org.springframework.web.util;WebUtils;false;findParameterValue;(ServletRequest,String);;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getCookie;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getNativeRequest;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getNativeResponse;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getParametersStartingWith;;;Argument[0];ReturnValue.MapKey;taint;manual",
        "org.springframework.web.util;WebUtils;false;getParametersStartingWith;;;Argument[0];ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getRealPath;;;Argument[0..1];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getRequiredSessionAttribute;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;getSessionAttribute;;;Argument[0];ReturnValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;parseMatrixVariables;;;Argument[0];ReturnValue.MapKey;taint;manual",
        "org.springframework.web.util;WebUtils;false;parseMatrixVariables;;;Argument[0];ReturnValue.MapValue;taint;manual",
        "org.springframework.web.util;WebUtils;false;setSessionAttribute;;;Argument[2];Argument[0];taint;manual"
      ]
  }
}
