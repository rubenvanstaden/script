#!/usr/bin/env bash
#
# Search filtered by tag. Only search files for string $2 that has tag $1.
#
# Usage: ft topic/chinese whose

set -e

fn() {
    local tag="#$1"
    local str="$2"

    rg -l --null --files-with-matches "$tag" | xargs -0 rg "$str"
}

fn "$1" "$2"

exit 0
