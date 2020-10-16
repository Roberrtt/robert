#!/bin/bash
set -e

if [[ "$1" == "bitcoin-cli" || "$1" == "bitcoin-tx" || "$1" == "bitcoind" || "$1" == "test_bitcoin" ]]; then
	mkdir -p "$BITCOIN_DATA"

	if [[ ! -s "$BITCOIN_DATA/bitcoin.conf" ]]; then
		cat <<-EOF >"$BITCOIN_DATA/bitcoin.conf"
			printtoconsole=1
			rpcallowip=::/0
			rpcpassword=${BITCOIN_RPC_PASSWORD:-password}
			rpcuser=${BITCOIN_RPC_USER:-bitcoin}
		EOF
		chown bitcoin:bitcoin "$BITCOIN_DATA/bitcoin.conf"
	fi


	chown -R bitcoin "$BITCOIN_DATA"
	ln -sfn "$BITCOIN_DATA" /home/bitcoin/.bitcoin
	chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin
fi
bitcoind -chain=regtest  --datadir=/data --conf=/bitcoin.conf 

