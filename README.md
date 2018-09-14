# Ethereum Sharding Proof of Concept (EXPERIMENTAL) 

This repository contains a proof of concept for a sharding implementation on Ethereum by Vlad Zamfir. 
The project was built during [ETHBerlin](http://ethberlin.com/), over 2 days, and should *NOT* be considered final nor production grade. There are probably major bugs/issues.

## Building the Docker image

```
$ docker build --tag py3web3mpl .
```

## Launching docker

```
$ docker run -it --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --volume="usr/ethshardingpoc" py3web3mpl
```

## Running the simulator

```
python3.6 simulator.py 
```

__Note: this uses X11 to display matplotlib, so please use it at your own risk__ 