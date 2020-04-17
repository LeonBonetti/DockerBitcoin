FROM ubuntu:16.04

MAINTAINER "Leonardo Bonetti https://hub.docker.com/u/leonbonetti/"

LABEL Description "Image to run bitcoin full node"

VOLUME /bitcoin

RUN apt-get update && apt-get install software-properties-common python-software-properties -y && apt-add-repository ppa:bitcoin/bitcoin -y &&  apt-get update && apt-get install bitcoind -y

ENV BINDIP_D="127.0.0.1"
ENV RPCUSER_D="test"
ENV RPCPASSWORD_D="test"
ENV RPCPORT_D="8332"
ENV RPCALLOW_D="0.0.0.0/0"

ENTRYPOINT ["/bin/sh", "-c", "bitcoind -server -txindex -rest -rpcbind=${BINDIP:-${BINDIP_D}} -rpcuser=${RPCUSER:-${RPCUSER_D}} -rpcpassword=${RPCPASSWORD:-${RPCPASSWORD_D}} -rpcport=${RPCPORT:-${RPCPORT_D}} -datadir=/bitcoin -rpcallowip=${RPCALLOW:-${RPCALLOW_D}} ${TESTNET:+-testnet}"]

EXPOSE ${RPCPORT:-${RPCPORT_D}}
