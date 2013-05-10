# fcache

## Usage
    $ fcache EXPIRE COMMAND
        EXPIRE  :  expire sec
        COMMAND :  any command line

## Example
    $ cat example.sh
    #!/bin/bash
    perl -e 'sleep 1; print "$$\n"' &
    perl -e 'sleep 1; print "$$\n"' &
    perl -e 'sleep 1; print "$$\n"' &
    time wait
    
    ./fcache 3 perl -e 'sleep 1; print "$$\n"' &
    ./fcache 3 perl -e 'sleep 1; print "$$\n"' &
    ./fcache 3 perl -e 'sleep 1; print "$$\n"' &
    time wait

    $ ./example.sh
    63742
    63741
    63743
    
    real        0m1.008s
    user        0m0.007s
    sys         0m0.006s
    63808
    63808
    63808
    
    real        0m1.128s
    user        0m0.195s
    sys         0m0.150s
