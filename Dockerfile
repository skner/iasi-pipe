# iasi bioinformatic pipeline for ion torrent
#
# VERSION               0.0.1

FROM ubuntu:14.04
MAINTAINER Simon <skner@users.noreply.github.com>

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install wget zip rpm2cpio


#install gsNewbler
RUN wget -q http://454.com/downloads/DataAnalysis_2.9_All_20130530_1559.tgz && \
    tar xfz DataAnalysis_2.9_All_20130530_1559.tgz && \
    rpm2cpio DataAnalysis_2.9_All/packages/gsNewbler-2.9-1.x86_64.rpm | cpio -i --make-directories && \
    rm -rf DataAnalysis_2.9_All DataAnalysis_2.9_All_20130530_1559.tgz





ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/454/apps/mapper/bin


#http://454.com/downloads/DataAnalysis_2.9_All_20130530_1559.tgz