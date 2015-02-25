# iasi bioinformatic pipeline for ion torrent
#
# VERSION               0.0.1

FROM ubuntu:14.04
MAINTAINER Simon <skner@users.noreply.github.com>

RUN apt-get update && apt-get install -y openssh-server

# Install 
RUN apt-get install bowtie2 -y