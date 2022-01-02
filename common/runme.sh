#!/bin/bash

# Author: Marios Karagiannopoulos {mariosk@gmail.com}
# https://unmineable.com/coins

if [ -z "$COIN" ] || [ -z "$WALLET_ADDRESS" ] || [ -z "$SERVER" ]; then
    echo "You need to define COIN and WALLET_ADDRESS and SERVER environment variables..."
    exit 2
fi

# USA_SERVER=rx-us.unmineable.com:3333
# EU_SERVER=rx-eu.unmineable.com:3333
# ASIA_SERVER=rx-asia.unmineable.com:3333

./xmrig -o $SERVER -u $COIN:$WALLET_ADDRESS -p x --cpu-no-yield