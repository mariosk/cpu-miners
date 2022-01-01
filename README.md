### Building the docker image for Linux ###
```
docker build -t cpu-miner . -f app.ubuntu/Dockerfile
```

### Building the docker image for RPI4 ###
Notes taken by: https://github.com/pragathoys/build_xmrig_for_armv7
```
docker build -t cpu-miner . -f app.raspbian/Dockerfile
```

### Running the docker container ###
```
docker rm -f shiba-miner
docker run \
    --env COIN=SHIB \
    --env WALLET_ADDRESS=0x0a3cea5818a531b72e25d354f9a970f03dc2b34d \
    -d --name shiba-miner \
    cpu-miner

docker rm -f safemoon-miner
docker run \
    --env COIN=SAFEMOON \
    --env WALLET_ADDRESS=0x0a3cea5818a531b72e25d354f9a970f03dc2b34d \
    -d --name safemoon-miner \
    cpu-miner
```
