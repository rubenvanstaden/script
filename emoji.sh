#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

fn() {
    local emojis=$(curl -sSL 'https://git.io/JXXO7')
    selected_emoji=$(echo $emojis | fzf)
    echo "$selected_emoji"
}

fn

exit 0
