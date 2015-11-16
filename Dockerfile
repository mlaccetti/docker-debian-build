###
# Building:
# $ docker build -t debian-build .
#
# Running:
# $ docker run --name my-debian-build -it --rm debian-build

FROM debian:jessie

MAINTAINER Michael Laccetti <michael@laccetti.com> (https://laccetti.com/)

# Update the container
RUN apt-get update --fix-missing && apt-get dist-upgrade -y

# Install build tools
RUN apt-get install -y wget curl unzip python perl build-essential flex bison gperf ruby git

# By default, just fire up a terminal
CMD /bin/bash