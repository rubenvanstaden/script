#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

#[[ -z $ZETTELKASTEN ]] && echo "ZETTELKASTEN env var not set" && exit 1

fn() {
    local tag=$1

    rg -C 5 "#${tag}" -g /slipbox/* | rg 'title:'
}

fn "$1"

exit 0
