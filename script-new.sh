#!/usr/bin/env bash

set -e

[[ -z $SK ]] && echo "SK env var not set" && exit 1

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

file="${SK}/${1}.sh"

cat >"$file" <<"EOF"
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

chmod +x "$file"

"$EDITOR" "$file"
