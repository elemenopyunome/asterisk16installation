#!/bin/bash
cd /usr/src
wget http://downloads.asterisk.org/pub/telephony/certified-asterisk/asterisk-certified-16.8-current.tar.gz
gzip -d asterisk-certified-16.8-current.tar.gz
tar -xvf asterisk-certified-16.8-current.tar
cd asterisk-certified-16.8-cert10/
apt-get install libedit-dev
apt-get install uuid-dev
apt-get install libjansson-dev
apt install libxml2-dev
apt install libsqlite3-dev
apt install libmysqlclient21
apt install libmysqlclient-dev
./configure
make menuselect
make
make install
make samples
cd /etc/asterisk/
ls
asterisk
