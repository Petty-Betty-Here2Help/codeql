#!/bin/bash

mkdir -p "$CODEQL_EXTRACTOR_SWIFT_TRAP_DIR"

QLTEST_LOG="$CODEQL_EXTRACTOR_SWIFT_LOG_DIR"/qltest.log

exec "$CODEQL_EXTRACTOR_SWIFT_ROOT/tools/$CODEQL_PLATFORM/extractor" -sdk "$CODEQL_EXTRACTOR_SWIFT_ROOT/qltest/$CODEQL_PLATFORM/sdk" -c *.swift >> $QLTEST_LOG 2>&1
