#!/bin/bash

wget https://github.com/FOGProject/fogproject/archive/1.5.2.tar.gz
tar -xvzf 1.5.2.tar.gz
cd fogproject-1.5.2/bin/
(echo -e "Y\n" & echo -e "N\n" & echo -e "N\n" & echo -e "n\n" & echo -e "n\n" & echo -e "N\n" & echo -e "192.168.1.19\n" & echo -e "N\n" & echo -e "2\n") | ./installfog.sh
