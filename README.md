# ATOMIC SWAP

## Electrumx (electrum node is connected to node 0)

|Electrumx    |  (external/internal) |
|-------------|----------------|
|instance-ip: |55002 / 50002|
|instance-ip: |55001 / 50001|

___________
## BTC

docker-compose up -d 

docker-compose exec bitcoind bash:

while true; do bitcoin-cli -regtest generate 1 ; sleep 300; done

|node          | port
|--------------|-------|
|bitcoind      | 18443 |
|bicoind_node1 | 18455 |
|bicoind_node2 | 18465 |
|bicoind_node3 | 18475 |
______________
## LTC

docker-compose up -d 

docker-compose exec litecoind bash

while true; do litecoin-cli -regtest generate 1; sleep 300; done

| node            | port  |
|-----------------|-------|
| litecoind       | 19443 |
| litecoind_node1 | 20201 |
| litecoind_node2 | 20301 |
| litecoind_node3 | 20401 |

______________
## QTUM

docker-compose up -d 

docker-compose exec qtumd bash

|
while true; do qtum-cli -regtest  generate 1; sleep 300; done

|node        | port  |
|------------|-------|
|qtumd       | 13888 |
|qtumd_node1 | 13889 |
|qtumd_node2 | 13988 |
|qtumd_node3 | 13981 |


__________
## BCH

docker-compose up -d 

docker-compose exec bitcoind bash

bitcoin-cli getnewaddress

while true; do bitcoin-cli generatetoaddress 1 <get address >; sleep 300; done

|node           | port  |
|---------------|-------|
|bitcoind       | 18443 |
|bitcoind1 | 18453 |
|bitcoind2 | 18463 |

## BTC SV

docker-compose up -d 

docker-compose exec bitcoind bash:

while true; do bitcoin-cli -regtest generate 1; sleep 300; done

|node          | port
|--------------|-------|
|bitcoind      | 18443 |
|bicoind_node1 | 18454 |
|bicoind_node2 | 18464 |

## DOGECOIN

docker-compose exec dogecoind bash:

while true; do dogecoin-cli -regtest generate 1; sleep 300; done

|node            | port
|----------------|-------|
|dogecoind       | 44555 |
|dogecoind_node1 | 44565 |
|dogecoind_node1 | 44575 |
______________


## DASH

docker-compose exec dashd bash:

while true; do dash-cli -regtest generate 1; sleep 300; done

|node            | port
|----------------|-------|
|dashd           | 19898 |
|dashd_node1     | 18453 |
|dashd_node2     | 18463 |
______________
