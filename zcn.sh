#!/bin/bash

set -e

cd "$ZC"

create () {
    uuid=$(date +'%Y%m%d%H%M')
    $EDITOR ${PWD}/${uuid}.md
}

create
