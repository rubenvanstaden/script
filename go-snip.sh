#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

range() {
cat << EOF
for i, v := range $1 {
}
EOF
}

iter() {
cat << EOF
for i := 0; i < $1; i++ {
}
EOF
}

err() {
cat << EOF
if err != nil {
    log.Fatalf("$1: %v", err)
}
EOF
}

mt() {
cat << EOF
func (s *$1) $2(ctx context.Context) error {
    return nil
}
EOF
}

fn() {
cat << EOF
func $1() error {
    return nil
}
EOF
}

if [[ "$1" == "range" ]]; then
    range "$2"
fi

if [[ "$1" == "iter" ]]; then
    iter "$2"
fi

if [[ "$1" == "err" ]]; then
    err "$2"
fi

if [[ "$1" == "fn" ]]; then
    fn "$2"
fi

if [[ "$1" == "mt" ]]; then
    mt "$2" "$3"
fi

exit 0
