#!/usr/bin/env bash

set -e

[[ -z $BROWSER ]] && echo "BROWSER env var not set" && exit 1

http() {
    local link
    if [[ "$1" == "go" ]]; then
        link="https://en.cppreference.com/w/"
    fi
    if [[ "$1" == "rust" ]]; then
        link="https://doc.rust-lang.org/1.69.0/std/index.html"
    fi
    if [[ "$1" == "cpp" ]]; then
        link="https://en.cppreference.com/w/"
    fi
    open -a "$BROWSER" "$link"
}

http "$1"

exit 0
