#!/bin/sh

debootstrap --arch i386 --variant minbase lenny lenny http://archive.debian.org/debian-archive/debian/
(cd lenny && tar -cvf - . > ../lenny.i386.tar )
rm -rf lenny

debootstrap --arch amd64 --variant minbase lenny lenny http://archive.debian.org/debian-archive/debian/
(cd lenny && tar -cvf - . > ../lenny.amd64.tar )
rm -rf lenny
