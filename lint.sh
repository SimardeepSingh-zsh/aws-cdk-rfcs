#!/bin/bash
# executes markdownlint on all RFCs
# --fix to fix errors
set -euo pipefail
scriptdir=$(cd $(dirname $0) && pwd)
linters=$PWD/tools/linters

(cd $linters && npm ci)
$linters/node_modules/.bin/markdownlint . --ignore node_modules --ignore tools
