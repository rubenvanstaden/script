#!/usr/bin/env bash

# githubuser--Given a GitHub username, pulls information about the user

if [ $# -ne 1 ]; then
	echo "Usage: $0 <username>"
	exit 1
fi

curl -s "https://api.github.com/users/$1" |
	awk -F'"' '
               /\"name\":/ {
                 print "\nUser:      "$4""
               }
               /\"followers\":/{
                 split($3, a, " ")
                 sub(/,/, "", a[2])
                 print "Followers: "a[2]""
               }
               /\"following\":/{
                 split($3, a, " ")
                 sub(/,/, "", a[2])
                 print "Following: "a[2]""
               }
               /\"created_at\":/{
                 print "Created:   "$4""
               }
'
exit 0
