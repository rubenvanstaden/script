#!/usr/bin/env bash
#
# Open last created zettel
#
# zn && zl - Creates a new zettel and opens it.

set -e

fn() {
    $EDITOR "$(ls -t1 $PWD | head -n 1)"
}

fn

exit 0
