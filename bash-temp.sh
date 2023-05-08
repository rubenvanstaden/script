#!/usr/bin/env bash

cat << "EOF"
#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

[[ -z $VAR ]] && echo "VAR env var not set" && exit 1

GLOBAL_VAR1="one"

fn() {
    local local_var="one"

    # Code HERE
}

fn

exit 0
EOF
