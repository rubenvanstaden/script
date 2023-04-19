#!/bin/bash

set -e

create () {
    uuid=$(date +'%Y%m%d%H%M')
    $EDITOR ${PWD}/${uuid}.md
}

create
