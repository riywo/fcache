# fcache

## Usage
    $ fcache EXPIRE COMMAND
        EXPIRE  :  expire sec
        COMMAND :  any command line

## Example

    $ time fcache 3 perl -e 'sleep 1; print time' & time fcache 3 perl -e 'sleep 1; print time' & time fcache 3 perl -e 'sleep 1; print time'
    [1] 61067
    [2] 61068
    1365052148
    1365052148
    1365052148
    
    real        0m1.201s
    user        0m0.063s
    sys	        0m0.054s

    real        0m1.200s
    user        0m0.064s
    sys         0m0.055s
    
    real        0m1.201s
    user        0m0.068s
    sys         0m0.060s
    [1]-  Done                    time ./fcache 3 perl -e 'sleep 1; print time'
    [2]+  Done                    time ./fcache 3 perl -e 'sleep 1; print time'
