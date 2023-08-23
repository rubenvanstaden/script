#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

# Format markdown and pass it to hurl to extract URLs from it.

# Pipe the output of pandoc(1) on our args into hurl(1df)
pandoc -f markdown -t html -- "${@:-/dev/stdin}" | hurl

exit 0
