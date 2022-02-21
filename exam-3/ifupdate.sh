#!/bin/bash

HOME=`snmpwalk -v 2c -c publicVM 10.0.1.108 .1.3.6.1.2.1.25.2.3.1.6.60 | grep -E -o '[0-9]+$'`
ROOT=`snmpwalk -v 2c -c publicVM 10.0.1.108 .1.3.6.1.2.1.25.2.3.1.6.55 | grep -E -o '[0-9]+$'`
HORA=`date +"%s"`

echo $HORA:$HOME:$ROOT
rrdtool update /home/lucasc/rrd/database.rrd $HORA:$HOME:$ROOT

