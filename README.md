# Docker Bitcoin
Dockerfile to run bitcoin node

# Environments variables

### BINDIP
   Set ip for node bind

### RPCUSER
   Set user to rpc access
   
### RPCPASSWORD
   Set password to rpc access
  
### RPCPORT
   Set port to expose rpc
    
### RPCALLOW
   Set ip to allow for rpc

###  TESTNET
   Set true to run a testnet node (Only set this for a testnet network)
    
## Example to run a mainnet node:
    docker run -d --name bitcoin_mainnet -e BINDIP=127.0.0.1 -e RPCUSER=Leon -e RPCPASSWORD=mainnet -e RPCPORT=8332 -e RPCALLOW=0.0.0.0/0 leonbonetti/bitcoin:tag

## Example to run a testnet node:
      docker run -d --name bitcoin_testnet -e BINDIP=127.0.0.1 -e RPCUSER=Leon -e RPCPASSWORD=testnet -e RPCPORT=18332 -e RPCALLOW=0.0.0.0/0 -e TESTNET=true leonbonetti/bitcoin:tag

