#!/usr/bin/bash

[ -f ./database.rrd ] &&  rm ./database.rrd

rrdtool create database.rrd      \
        --start N                \
        --step 60                \
        DS:home:GAUGE:180:0:U     \
        DS:root:GAUGE:180:0:U    \
        RRA:LAST:0.3:3:20
