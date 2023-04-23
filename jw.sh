#!/bin/bash

set -e

create () {
    local past=$(($1 * 7))
    uuid=$(date -v -"${past}"d +'%Y-%m-%U')
    $EDITOR "${JOURNAL}/weekly/${uuid}.md"
}

if [[ -n ${JOURNAL} ]]; then
    create "$1"
else
    echo "ERROR: env var $JOURNAL not set"
fi

