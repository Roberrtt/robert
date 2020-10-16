# Description
Regtest daemon that auto-mines transactions every 5 sec.

Blocks get mined to the following account:

```
            ADDRESS                |                     PRIVATE KEY

mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo | cVVGgzVgcc5S3owCskoneK8R1BNGkBveiEcGDaxu8RRDvFcaQaSG
```

# Run instructions
Start docker using:
`docker run -d --name bch-bitcoind-regtest -p 8332:8332 vishy12/bch-bitcoind-regtest:latest`

# RPC Access
RPC is enabled on the port 8332.

- **RPC Username** - root
- **RPC Password** - bitcoin

For e.g., you could do:
`curl -u root:bitcoin -X GET http://localhost:8332/getblockchaininfo`
