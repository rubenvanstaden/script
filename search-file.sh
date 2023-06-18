#!/usr/bin/env bash

[[ -n $1 ]] && cd $1 # go to provided folder or noop

RG_DEFAULT_COMMAND="rg -i -l --hidden --no-ignore-vcs"

selected=$(
FZF_DEFAULT_COMMAND="rg --files" fzf \
  -m \
  -e \
  --ansi \
  --disabled \
  --reverse \
  --bind "change:reload:$RG_DEFAULT_COMMAND {q} || true" \
  --preview "rg -i --pretty --context 2 {q} {}" | cut -d":" -f1,2
)

# Open multiple files in editor
[[ -n $selected ]] && nvim $selected

exit 0
