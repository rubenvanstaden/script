#!/bin/bash
#
# Open yesterday's zettel in editor.
#
# https://www.cyberciti.biz/tips/linux-unix-get-yesterdays-tomorrows-date.html

set -e

yesterday=$(date -v -1d +"%Y-%m-%d")

$EDITOR ${JOURNAL}/daily/${yesterday}.md
