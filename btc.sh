#!/usr/bin/env bash

# getbtcaddr--Given a Bitcoin address, reports useful information

if [ $# -ne 1 ]; then
	echo "Usage: $0 <address>"
	exit 1
fi

base_url="https://blockchain.info/q/"

balance=$(curl -s $base_url"addressbalance/"$1)
recv=$(curl -s $base_url"getreceivedbyaddress/"$1)
sent=$(curl -s $base_url"getsentbyaddress/"$1)
first_made=$(curl -s $base_url"addressfirstseen/"$1)

echo ""
echo "Address $1"
echo -e "\tFirst seen: $(date -r $first_made)"
echo -e "\tCurrent balance: "$balance
echo -e "\tSatoshis sent: "$sent
echo -e "\tSatoshis recv: "$recv
