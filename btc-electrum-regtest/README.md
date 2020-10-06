# Bitcoin Regtest with Electrum Server and Faucet API

* New blocks are mined automatically every 20 seconds
* Insight API: tls@55002, tcp@55001
* Faucet API: http://localhost:3001/faucet/

# Requirement
* docker & docker-compose

# Stack
* Node 0 (this is a mining node; container name: bitcoind)
* Node 1-6 (these are nodes with out mining,created for testing; container_names:  bitcoind_node(1-6))
* Version of all nodes: 0.17

| JSON-RPC/REST (external/internal) | P2P (external/internal)  | Node number | 
|---|---|---|
| instance-ip: 18443 / 18443   | 18444 / 18444  |   node 0 |
| instance-ip: 18455 / 18443   | 18455 / 18444  |  node 1  |
| instance-ip: 18465 / 18443   | 18465 / 18444   |  node 2 |
| instance-ip: 18475 / 18443   | 18475 / 18444    |node 3   |
| instance-ip: 18485 / 18443  |  18485 / 18444   | node 4  |
| instance-ip: 18495 / 18443  | 18495 / 18444   | node 5  |
| instance-ip: 18595 / 18443  | 18595 / 18444   |  node 6 |

Electrumx (electrum node is connected to node 0)

|Electrumx (external/internal) | 
|---|
|instance-ip: 55002 / 50002|
|instance-ip: 55001 / 50001|

# Usage

Following commands are enabled under the root dir of the project.
1. clone: `git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY `
2. build: `docker-compose build`
3. clean: `./clean-electrumx.sh`
4. start daemon: `docker-compose up -d`
5. test: `./test.sh`

## Other commands
* stop & remove daemon: `docker-compose down`
* list process: `docker-compose ps`
* login to the server: `docker-compose exec bitcoind bash`
* run command: `docker-compose exec bitcoind [command]`


# Electrum API example

after `$ npm install`, try `$ node rpctest.js`.

# Faucet API example

`curl -d "amount=10"  http://localhost:3001/faucet/mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo`

# Other examples

```
$ docker exec --user bitcoin electrumx-regtest_bitcoind_1 bitcoin-cli -rpcuser=electrum -rpcpassword=electrum -regtest getmininginfo
```

```
$ docker exec -it --user bitcoin electrumx-regtest_bitcoind_1 bash
```
