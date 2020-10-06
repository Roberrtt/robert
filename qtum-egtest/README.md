# Qtum Regtest with Electrum Server

* New blocks are mined automatically every 300 seconds
* Insight API: tls@57002, tcp@57001

# Requirement
* docker & docker-compose

# Stack
* Node 0 (this is a mining node; container name: qtumd)
* Node 1-6 (these are nodes with out mining,created for testing; container_names:  qtumd-node(1-6))
* Version of all nodes: 0.17.6

| JSON-RPC/REST (external/internal) | P2P (external/internal)  | Node number | 
|---|---|---|
| instance-ip: 13888 / 13889   | 23888 / 23888  |   node 0 |
| instance-ip: 13898 / 13889   | 13899 / 23888  |  node 1  |
| instance-ip: 13988 / 13889   | 13989 / 23888   |  node 2 |
| instance-ip: 13981 / 13889   | 13982 / 23888    |node 3   |
| instance-ip: 13983 / 13889  |  13984 / 23888   | node 4  |
| instance-ip: 13985 / 13889  | 13986 / 23888   | node 5  |
| instance-ip: 13995 / 13889  | 13996 / 23888   |  node 6 |

Electrumx (electrum node is connected to node 0)

|Electrumx (external/internal) | 
|---|
|instance-ip: 57001 / 50001|
|instance-ip: 57002 / 50002|

# Usage

Following commands are enabled under the root dir of the project.
1. clone: `git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY `
2. build: `docker-compose build`
3. start daemon: `docker-compose up -d`


## Other commands
* stop & remove daemon: `docker-compose down`
* list process: `docker-compose ps`
* login to the server: `docker-compose exec qtumd bash`
* run command: `docker-compose exec qtumd [command]`




# Other examples

```
$ docker exec --user qtum qtumd-electrumx qtum-cli -rpcuser=electrum -rpcpassword=electrum -regtest getmininginfo
```

```
$ docker exec -it --user qtum qtumd-electrumx bash
```
