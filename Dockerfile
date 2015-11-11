FROM debian:jessie

# Update the container
RUN apt-get update

# Install build tools
RUN apt-get install -y wget curl unzip python perl build-essential flex bison gperf ruby

# By default, just fire up a terminal
CMD /bin/bash