#! /usr/bin/env bash

set -euxo pipefail

HUGO_PROJECT_PATH=$(cd $(dirname $0) && cd ../ && pwd)/portfolio

cd ${HUGO_PROJECT_PATH}

hugo server --disableFastRender \
            --noBuildLock