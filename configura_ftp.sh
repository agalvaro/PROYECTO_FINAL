#!/bin/bash

apt-get install -y proftpd-basic proftpd-doc

rm /etc/proftpd/proftpd.conf
cp PROYECTO_FINAL/archivo_proftpd/proftpd.conf /etc/proftpd/proftpd.conf

/etc/init.d/proftpd restart
