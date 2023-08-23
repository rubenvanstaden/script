#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

rg . -l0 | xargs -0 -I {} sh -c 'echo "\033[35m{}\033[0m" && head -1 {} && echo'
