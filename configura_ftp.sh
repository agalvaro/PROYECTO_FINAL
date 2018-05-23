#!/bin/bash

apt-get install -y proftpd-basic proftpd-doc

/etc/init.d/proftpd restart
