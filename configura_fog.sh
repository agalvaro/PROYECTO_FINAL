#!/bin/bash

cd /opt/
wget --no-check-certificate http://downloads.sourceforge.net/project/freeghost/FOG/fog_1.2.0/fog_1.2.0.tar.gz
tar -xvzf fog_1.2.0.tar.gz
cd fog_1.2.0/bin/
chmod +x ./installfog.sh
./installfog.sh
2
