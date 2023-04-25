#!/bin/bash

set -e

[[ -z $ZETTELKASTEN ]] && echo "ZET env var not set" && exit 1

create () {
    local uuid
    uuid=$(date +'%Y%m%d%H%M')
    local file="$ZETTELKASTEN/$uuid.md"
    $EDITOR "$file"
}

create
