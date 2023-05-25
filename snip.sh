#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

#[[ -z $SNIPPET ]] && echo "SNIPPET env var not set" && exit 1

fn() {
    if [[ "$1" == go ]]; then
        source go-snip.sh
        if [[ "$2" == "range" ]]; then
            range "$3"
        fi
        if [[ "$2" == "err" ]]; then
            err "$3"
        fi
    fi

    if [[ "$1" == rs ]]; then
        source rs-graph.sh
        if [[ "$2" == "graph" ]]; then
            graph
        fi
        if [[ "$2" == "test" ]]; then
            test
        fi
    fi
}

fn "$1" "$2" "$3"

exit 0
