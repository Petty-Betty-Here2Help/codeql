#! /usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

(
    cd "$SCRIPT_DIR" || exit 1
    DEP_DIR="$(pwd)/.." # path to ql root, as that contains the paket dependency file
    (dotnet tool restore && dotnet paket install)
    cd ../..
    tools/bazel run @rules_dotnet//tools/paket2bazel -- --dependencies-file "$DEP_DIR"/paket.dependencies --output-folder "$DEP_DIR"/csharp
)
