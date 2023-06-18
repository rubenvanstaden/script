#!/usr/bin/env bash

declare preview='bat --color=always --style=header,numbers -H {2} {1} | grep -C3 {q}'

rg --color=always -n ${list_files:+-l} "$1" 2> /dev/null |
fzf -d: \
    --ansi \
    --query="$1" \
    --phony \
    --bind="change:reload:rg -n ${list_files:+-l} --color=always {q}" \
    --bind='enter:execute:v {1}' \
    --preview="[[ -n {1} ]] && $preview"
