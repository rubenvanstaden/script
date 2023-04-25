#!/bin/bash

set -e

[[ -z "$JOURNAL" ]] && echo "ERROR: env var $JOURNAL not set" && exit 1

create() {
	local past=$1
	uuid=$(date -v -"${past}d" +'%Y-%m-%d')
	$EDITOR "${JOURNAL}/daily/${uuid}.md"
}

create "$1"
