#!/bin/bash

apt-get install -y approx

rm /etc/approx/approx.conf
cp /home/usuario/PROYECTO_FINAL/archivos_approx/approx.conf /etc/approx/approx.conf
rm /etc/apt/sources.list
cp /home/usuario/PROYECTO_FINAL/archivos_approx/sources.list /etc/apt/sources.list
chown approx.approx /var/cache/approx -R

/etc/init.d/openbsd-inetd restart
