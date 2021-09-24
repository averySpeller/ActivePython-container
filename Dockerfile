FROM ubuntu

# Updating curl
RUN apt update && apt install -y curl

# Install state tool
WORKDIR /root
ADD https://platform.activestate.com/dl/cli/install.sh .
RUN sh install.sh -n -t /usr/bin

# Install ActivePython
WORKDIR /activepython
RUN state activate -n ActiveState/ActivePython-3.8  --path .
