#!/usr/bin/env bash

set -e

[[ -z $ZETTELKASTEN ]] && echo "ZETTELKASTEN env var not set" && exit 1

fn() {

    local uuid
    uuid=$(date +'%Y%m%d%H%M')

    local file="$ZETTELKASTEN/$uuid.md"

cat >"$file" <<"EOF"
---
title: 
tags: ""
---

---
EOF
}

fn

exit 1
