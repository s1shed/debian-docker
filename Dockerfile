FROM scratch

LABEL MAINTAINER Edward Shornock <ed.shornock@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
ADD lenny.amd64.tar.xz /
COPY sources.list /etc/apt/sources.list
COPY apt.conf /etc/apt/apt.conf
