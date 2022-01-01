### Building the docker image for Linux ###
```
docker build -t shiba-miner .
```

### Building the docker image for RPI4 ###
Notes taken by: https://github.com/pragathoys/build_xmrig_for_armv7
```
docker build -t shiba-miner . -f Dockerfile.raspbian
```

### Running the docker container ###
```
docker run -d --name shiba shiba-miner
```

### Deleting the docker container ###
```
docker rm -f shiba
```
