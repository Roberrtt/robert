atomic swap
___________
## BTC

docker-compose exec bitcoind bash:
while true; do bitcoin-cli -regtest generate 1; sleep 300; done

|node          | port
|--------------|-------|
|bitcoind      | 18443 |
|bicoind_node1 | 18454 |
|bicoind_node2 | 18464 |
|bicoind_node3 | 18474 |
______________
## LTC

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

docker-compose exec qtumd bash
while true; do qtum-cli -regtest -rpcuser electrum -rpcpassword electrum generate 1; sleep 300; done

|node        | port  |
|------------|-------|
|qtumd       | 13888 |
|qtumd_node1 | 13889 |
|qtumd_node2 | 13988 |
|qtumd_node3 | 13981 |
