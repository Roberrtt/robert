# Litecoin Regtest with Electrum Server

* New blocks are mined automatically every 20 seconds
* Insight API: tls@56002, tcp@56001

# Requirement
* docker & docker-compose

# Stack
* Node 0 (this is a mining node; container name: litecoin-regtest)
* Node 1-6 (these are nodes with out mining,created for testing; container_names:  litecoin-regtest-node(1-6))
* Version of all nodes: 0.17

| JSON-RPC/REST (external/internal) | P2P (external/internal)  | Node number | 
|---|---|---|
| instance-ip: 20011 / 19443   | 19444 / 19444  |   node 0 |
| instance-ip: 21111 / 19332   | 20201 / 19444  |  node 1  |
| instance-ip: 21211 / 19332   | 20301 / 19444   |  node 2 |
| instance-ip: 20321 / 19332   | 20411 / 19444    |node 3   |
| instance-ip: 20341 / 19332  |  20331 / 19444   | node 4  |
| instance-ip: 20361 / 19332  | 20351 / 19444   | node 5  |
| instance-ip: 20381 / 19332  | 20371 / 19444   |  node 6 |

Electrumx (electrum node is connected to node 0)

|Electrumx (external/internal) | 
|---|
|instance-ip: 56002 / 50002|
|instance-ip: 56001 / 50001|

# Usage

Following commands are enabled under the root dir of the project.
1. clone: `git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY `
2. build: `docker-compose build`
3. start daemon: `docker-compose up -d`


## Other commands
* stop & remove daemon: `docker-compose down`
* list process: `docker-compose ps`
* login to the server: `docker-compose exec litecoin-regtest bash`
* run command: `docker-compose exec litecoin-regtest [command]`




# Other examples

```
$ docker exec --user litecoin litecoind-electrumx litecoin-cli -rpcuser=electrum -rpcpassword=electrum -regtest getmininginfo
```

```
$ docker exec -it --user litecoin litecoind-electrumx bash
```
