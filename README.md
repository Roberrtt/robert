# ATOMIC SWAP


___________
## BTC

docker-compose up -d 

docker-compose exec bitcoind bash:

while true; do bitcoin-cli -regtest generate 1; sleep 300; done

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

while true; do  bitcoin-cli -regtest -rpcuser=electrum -rpcpassword=electrum generate 10; sleep 3; done

|node           | port  |
|---------------|-------|
|bitcoind       | 18343 |
|bitcoind_node1 | 18454 |
