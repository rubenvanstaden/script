#!/usr/bin/env bash

set -e

[[ -z $ZETTELKASTEN ]] && echo "ZETTELKASTEN env var not set" && exit 1

create () {
    local uuid
    uuid=$(date +'%Y%m%d%H%M')
    local file="$ZETTELKASTEN/$uuid.md"
    touch "$file"
}

create
