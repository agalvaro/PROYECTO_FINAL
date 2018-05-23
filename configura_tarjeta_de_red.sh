#!/bin/bash

rm /etc/network/interfaces
cp archivos_interfaz/interfaces /etc/network/interfaces

/etc/init.d/networking restart
