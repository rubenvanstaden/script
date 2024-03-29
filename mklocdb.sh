#!/usr/bin/env bash
#
             # mklocatedb--Builds the locate database using find. User must be root
             #   to run this script.
             #
locatedb="/var/locate.db"

if [ "$(whoami)" != "root" ] ; then
    echo "Must be root to run this command." >&2
    exit 1
fi

find / \
    -path /System -prune -o \
    -path /Library -prune -o \
    -path /Applications -prune -o \
    -path /private -prune -o \
    -path /dev -prune -o \
    -path /System -prune -o \
    -print > $locatedb

exit 0
