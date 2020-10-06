#!/bin/bash

# rm -rf /home/bitcoin/.bitcoin

litecoind -daemon --datadir=/home/litecoin/.litecoin -conf=/home/litecoin/litecoin.conf

sleep 10

cd /home/litecoin

AUTH="-rpcuser=electrum -rpcpassword=electrum"

# litecoind-cli -regtest $AUTH getblockchaininfo

litecoin-cli -regtest $AUTH generate 110

litecoin-cli -regtest $AUTH importprivkey "cVVGgzVgcc5S3owCskoneK8R1BNGkBveiEcGDaxu8RRDvFcaQaSG" "Account1" false
litecoin-cli -regtest $AUTH importprivkey "cRGkipHiYFRSAgdY9NjUT7egHTuNXoKYWQea3kWVbkSJAs4VDi8r" "Account2" false
litecoin-cli -regtest $AUTH importprivkey "cTc8XCQZuSt5E1LArqCxyaXhn1cQkvcBMAGQ159raPSQTuBpHWdi" "Account3" false
litecoin-cli -regtest $AUTH importprivkey "cQ9JwsoYHC2Md41uDbczDVpsuWAeYjDDrDiGbCBZ4stZhZvLZWj8" "Account4" false
litecoin-cli -regtest $AUTH importprivkey "cQrY4VypAuemJtHmNNJLyx1SNjY7mpfkdQEJpccpLSvan5YoMAkM" "Account5" true

litecoin-cli -regtest $AUTH generate 1

litecoin-cli -regtest $AUTH setaccount "mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo" "Account1"
litecoin-cli -regtest $AUTH setaccount "mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW" "Account2"
litecoin-cli -regtest $AUTH setaccount "mtdVMhiWWmegkkBhzYDrz84yfgofPNLNmb" "Account3"
litecoin-cli -regtest $AUTH setaccount "mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5" "Account4"
litecoin-cli -regtest $AUTH setaccount "mnk2URqujBqMEfhALMby1WZHoBRauW37Kg" "Account5"

litecoin-cli -regtest $AUTH sendmany "" '{"mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo":123.12345,"mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW":25.4112}'
litecoin-cli -regtest $AUTH sendmany "" '{"mtdVMhiWWmegkkBhzYDrz84yfgofPNLNmb":62.4322,"mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5":31.2345}'
litecoin-cli -regtest $AUTH sendmany "" '{"mnk2URqujBqMEfhALMby1WZHoBRauW37Kg":14.1337}'

litecoin-cli -regtest $AUTH generate 3

litecoin-cli -regtest $AUTH sendmany "Account2" '{"mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo":1.1337,"mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5":4.123, "mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW":6.324}'
litecoin-cli -regtest $AUTH sendmany "Account3" '{"mqNnZTyFxhB6EzF1iDEAp9enrT84fwd1X5":2.1337,"mzdF3oEx8mKrpGb5rVnTE7MhQfL8N8oSnW":6.123, "mtdVMhiWWmegkkBhzYDrz84yfgofPNLNmb": 7.34}'
litecoin-cli -regtest $AUTH sendmany "Account4" '{"mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo":7.1337,"mnk2URqujBqMEfhALMby1WZHoBRauW37Kg":1.123}'

litecoin-cli -regtest $AUTH generate 1

litecoin-cli -regtest $AUTH listaccounts

# litecoin-cli -regtest $AUTH stop

sleep 1

node faucet.js
