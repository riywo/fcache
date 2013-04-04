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
    wait
    
    ./fcache 3 perl -e 'sleep 1; print "$$"' &
    ./fcache 3 perl -e 'sleep 1; print "$$"' &
    ./fcache 3 perl -e 'sleep 1; print "$$"' &
    wait

    $ ./example.sh
    62808
    62809
    62810
    62798
    62798
    62798
