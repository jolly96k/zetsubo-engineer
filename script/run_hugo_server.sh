#! /usr/bin/env bash

set -euxo pipefail

SCRIPT_DIRNAME=$(cd $(dirname $0) && pwd)
HUGO_PROJECT_PATH=/usr/local/share/hugo_workspace/zetsubo-engineer/portfolio

cd ${HUGO_PROJECT_PATH}

hugo server --disableFastRender \
            --noBuildLock