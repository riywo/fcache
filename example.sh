#!/bin/bash
perl -e 'sleep 1; print "$$\n"' &
perl -e 'sleep 1; print "$$\n"' &
perl -e 'sleep 1; print "$$\n"' &
time wait

./fcache 1 perl -e 'sleep 1; print "$$"' &
./fcache 1 perl -e 'sleep 1; print "$$"' &
./fcache 1 perl -e 'sleep 1; print "$$"' &
time wait
