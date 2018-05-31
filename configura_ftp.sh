#!/bin/bash

apt-get install -y proftpd-basic proftpd-doc

rm /etc/proftpd/proftpd.conf
cp /POYECTO_FINAL/archivo_ftp/proftpd.conf /etc/proftpd/proftpd.conf

/etc/init.d/proftpd restart
