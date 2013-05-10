#!/bin/bash
perl -e 'sleep 1; print "$$\n"' &
perl -e 'sleep 1; print "$$\n"' &
perl -e 'sleep 1; print "$$\n"' &
time wait

./fcache 1 perl -e 'sleep 1; print "$$\n"' &
./fcache 1 perl -e 'sleep 1; print "$$\n"' &
./fcache 1 perl -e 'sleep 1; print "$$\n"' &
time wait
