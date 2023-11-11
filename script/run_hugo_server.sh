#! /usr/bin/env bash

set -euxo pipefail

SCRIPT_DIRNAME=$(cd $(dirname $0) && pwd)
HUGO_PROJECT_PATH=$(cd $(dirname $0) && cd ../ && pwd)/${HUGO_PROJECT_NAME}

cd ${HUGO_PROJECT_PATH}

hugo server --disableFastRender \
            --noBuildLock