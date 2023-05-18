#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

cat << "EOF"
func TestUnit(t *testing.T) {
	cases := []struct {
		age1     int
		age2     int
		expected bool
	}{
		{
			age1:     1,
			age2:     2,
			expected: false,
		},
		{

			age1:     2,
			age2:     1,
			expected: true,
		},
	}

	for _, c := range cases {
		p1 := NewPerson(c.age1)
		p2 := NewPerson(c.age2)

		got := p1.older(p2)

		if got != c.expected {
			t.Errorf("Expected %v > %v, got %v", p1.age, p2.age, got)
		}
	}
}
EOF

exit 0
