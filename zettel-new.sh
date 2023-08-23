#!/usr/bin/env bash

set -e

fn() {

    local uuid
    uuid=$(date +'%Y%m%d%H%M')

    local file="$PWD/$uuid.md"

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
