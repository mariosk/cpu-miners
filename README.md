### Building the docker image ###
```
docker build -t shiba-miner .
```

### Running the docker container ###
```
docker run -d --name shiba shiba-miner
```

### Deleting the docker container ###
```
docker rm -f shiba
```
