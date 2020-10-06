atomic swap

BTC

docker-compose exec bitcoind bash
while true; do bitcoin-cli -regtest generate 1; sleep 300; done

LTC

docker-compose exec litecoind bash
while true; do litecoin-cli -regtest generate 1; sleep 300; done

QTUM

docker-compose exec qtumd bash
while true; do qtum-cli -regtest -rpcuser electrum -rpcpassword electrum generate 1; sleep 300; done
