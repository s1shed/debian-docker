FROM eshornock/debian:5.0

LABEL MAINTAINER Edward Shornock <ed.shornock@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN set -eux && \
	apt-get update -m --yes && \
	apt-get install -y -m build-essential gcc-multilib vim netcat wget curl libssl-dev &&\
	apt-get clean && \
	apt-get autoremove
