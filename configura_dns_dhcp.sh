#!/bin/bash

apt-get -y install bind9
apt-get -y install isc-dhcp-server

dnssec-keygen -a HMAC-MD5 -b 128 -r /dev/urandom -n USER DDNS_UPDATE

echo "key DDNS_UPDATE {" > ddns.key
echo "algorithm HMAC-MD5.SIG-ALG.REG.INT;" >> ddns.key
echo 'secret "' >> ddns.key
echo 'cat *.private | grep Key | cut -d " " -f 2' >> ddns.key
echo '";' >> ddns.key
echo "};" >>ddns.key


cp ddns.key /etc/bind/
cp ddns.key /etc/dhcp/
chown root:bind /etc/bind/ddns.key
chown root:root /etc/dhcp/ddns.key
chmod 640 /etc/bind/ddns.key
chmod 640 /etc/dhcp/ddns.key

rm /etc/bind/named.conf.local
cp archivos_dns/named.conf.local /etc/bind/named.conf.local
cp archivos_dns/db.directa /etc/bind/db.directa
cp archivos_dns/db.inversa /etc/bind/db.inversa

ln -s /etc/bind/db.directa /var/cache/bind/
ln -s /etc/bind/db.inversa /var/cache/bind/

rm /etc/dhcp/dhcpd.conf
cp archivos_dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf

echo " " >> /etc/resolv.conf
echo "nameserver 192.168.1.19" >> /etc/resolv.conf

/etc/init.d/isc-dhcp-server restart
/etc/init.d/bind9 restart
