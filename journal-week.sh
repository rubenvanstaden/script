#!/bin/bash

set -e

[[ -z "$JOURNAL" ]] && echo "ERROR: env var $JOURNAL not set" && exit 1

fn() {
    local past=$(($1 * 7))
    uuid=$(date -v -"${past}"d +'%Y-%m-%U')
    $EDITOR "${JOURNAL}/weekly/${uuid}.md"
}

fn "$1"

exit 0
