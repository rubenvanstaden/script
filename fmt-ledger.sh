#!/usr/bin/env bash
#
# Run format ledger file

set -e

fn() {
    local filename="$1"

	ledger -f "${PWD}/$filename" print --sort date --date-format "%Y/%m/%d"
}

fn "$@"

exit 0
