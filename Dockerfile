FROM ubuntu:xenial

# work directory
ADD . /usr/ethshardingpoc
WORKDIR /usr/ethshardingpoc

# PREPARE FOR BUIDL
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:fkrull/deadsnakes #source of python 3.6, use at own risk
RUN apt-get update

# PYTHON
RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv python3.6-tk
RUN apt-get install -y git

# MATPLOTLIB
RUN apt-get install -y libxml2 libxml2-dev libpng-dev freetype2-demos pkg-config

# PIP
RUN python3.6 -m pip install pip --upgrade
RUN python3.6 -m pip install -r requirements.txt