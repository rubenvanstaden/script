#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

cat << "EOF"
import (
	"regexp"
	"testing"

	"github.com/rubenvanstaden/test"
)

func TestHttp(t *testing.T) {

	cases := []struct {
        name string
        addr string
        want bool
	}{
		{
            name: "Valid Http",
            addr: "http://127.0.0.1:8080",
            want: true,
		},
		{
            name: "Invalid Prefix",
            addr: "htt://127.0.0.1:8080",
            want: false,
		},
	}

	for _, c := range cases {
        re := regexp.MustCompile(httpRegex())
        got := re.MatchString(c.addr)
        test.Equals(t, c.want, got)
	}
}
EOF

exit 0
