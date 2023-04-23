#!/bin/bash

set -e

cd $ZK

create () {
    uuid=$(date +'%Y%m%d%H%M')
    $EDITOR ${PWD}/${uuid}.md
}

create
