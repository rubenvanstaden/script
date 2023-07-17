#!/usr/bin/env bash

# showfile--Shows the contents of a file, including additional useful info
#
# 29 Displaying a File with Additional Information (Wicked Cool Shell Scripts)

. "$SK/color.sh"

colors

width=80

for input
do
    lines="$(wc -l < $input | sed 's/ //g')"
    chars="$(wc -c < $input | sed 's/ //g')"
    owner="$(ls -ld $input | awk '{print $3}')"
    created="$(stat -f "%SB" $input)"
    modified="$(stat -f "%Sm" $input)"

    echo "-----------------------------------------------------------------"
    echo "File     - $input"
    echo "Created  - $created"
    echo "Modified - $modified"
    echo "Lines    - $lines"
    echo "Chars    - $chars"
    echo "Owner    - $owner"
    echo "-----------------------------------------------------------------"

    linecount="1"
    while read line
    do
        if [ ${#line} -gt $width ] ; then
         echo "$line" | fmt | sed -e '1s/^/  /' -e '2,$s/^/+ /'
       else
        echo -e "${purple}${linecount}${reset}:  $line"
    fi
        linecount="$(( $linecount + 1 ))"
    done < $input

    echo "-----------------------------------------------------------------"

done

exit 0
