#!/bin/sh

debootstrap --variant minbase lenny lenny http://archive.debian.org/debian-archive/debian/
(cd lenny && tar -cvf - . > ../lenny.tar )
rm -rf lenny
