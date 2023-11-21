#!/bin/sh
if [ ! -d /data/erigon/chaindata ]; then
    echo "/data/erigon/chaindata not found, running 'erigon init'..."
    erigon --datadir /data/erigon  init /config/genesis.json
    echo "...done!"
fi

erigon "$@"

