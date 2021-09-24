FROM ubuntu

# Install state tool
WORKDIR /root
ADD https://platform.activestate.com/dl/cli/install.sh .
RUN sh install.sh -n

# Install ActivePython
WORKDIR /activepython
RUN state activate -n ActiveState/ActivePython-3.8 --default
