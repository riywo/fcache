#!/bin/bash
./ifconfig.me.py port &
./ifconfig.me.py port &
./ifconfig.me.py port &
time wait

echo

./cache.ifconfig.me.py port &
./cache.ifconfig.me.py port &
./cache.ifconfig.me.py port &
time wait
