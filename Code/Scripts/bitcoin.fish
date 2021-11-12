#!/usr/bin/fish 

#use a counter to prevent inf loop
#after N tries stop trying
set -l counter 10

# exchange rate

set -l response_rate ''
while test -z $response_rate; and test $counter -gt 0
	set response_rate (curl --location -Ss 'api.coincap.io/v2/rates/euro' | grep 'data')
	set counter (math $counter -2)
end

if test $counter -eq 0
    exit 1
end

set rate (echo $response_rate | jq .data.rateUsd | string trim -c \")

# price
set -l counter 10
set -l response_price ''
while test -z $response_price; and test $counter -gt 0
	set response_price (curl --location -Ss 'api.coincap.io/v2/assets/bitcoin' | grep 'data')
	set counter (math $counter -1)
end

if test $counter -eq 0
    exit 1
end

set BTC_USD (echo $response_price | jq .data.priceUsd | string trim -c \")

echo (date +%R\ %d/%m) >  /tmp/bitcoin.dat
echo (math -s2 $BTC_USD / $rate) >> /tmp/bitcoin.dat

