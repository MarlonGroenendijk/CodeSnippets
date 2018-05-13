#!/bin/bash
# Output is in EUR
while true
do
	wget -q https://api.litebit.eu/market/bcc -O /tmp/bccprice.json
	readarray -t buyPrice < <(cat  /tmp/bccprice.json | jq -r '.result .buy')
	readarray -t sellPrice < <(cat  /tmp/bccprice.json | jq -r '.result .sell')
	clear
	echo -ne "\e[97m\e[100mBCC Price\n\e[40m Buy: €${buyPrice[0]} Sell: €${sellPrice[0]}"
	sleep 20
done
