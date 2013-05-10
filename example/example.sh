#!/bin/bash
./ifconfig.me.py port &
./ifconfig.me.py port &
./ifconfig.me.py port &
time wait

./cache.ifconfig.me.py port &
./cache.ifconfig.me.py port &
./cache.ifconfig.me.py port &
time wait
