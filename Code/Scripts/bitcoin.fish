#!/usr/bin/fish 

set response_rate ''
while test -z $response_rate
	set response_rate (curl --location -Ss 'api.coincap.io/v2/rates/euro' | grep 'data')
end

set rate (echo $response_rate | jq .data.rateUsd | string trim -c \")

#use a counter to prevent inf loop
#after N tries stop trying

set response_price ''
set -l counter 10
while test -z $response_price; and test $counter -gt 0
	set response_price (curl --location -Ss 'api.coincap.io/v2/assets/bitcoin' | grep 'data')
	set counter (math $counter -1)
	echo $counter
end

if test -z $response_price
	set response_price "UNREACHABLE"
end

set BTC_USD (echo $response_price | jq .data.priceUsd | string trim -c \")

echo (math -s2 $BTC_USD / $rate) > /tmp/bitcoin.dat
