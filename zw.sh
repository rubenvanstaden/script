#!/bin/bash

set -e

create () {
    uuid=$(date +'%Y-%m-%U')
    $EDITOR ${JOURNAL}/weekly/${uuid}.md
}

if [ -n ${JOURNAL} ]; then
    create
else
    echo "ERROR: Env var (JOURNAL) not set"
fi

