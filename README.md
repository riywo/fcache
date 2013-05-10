# fcache

## Usage
    Usage: fcache EXPIRE_SEC COMMAND [ARGS]
        EXPIRE_SEC :  expire sec
        COMMAND    :  any command
        ARGS       :  command line arguments

## Example
    $ cd example
    $ ./example.sh
    ifconfig.me port:63303
    ifconfig.me port:63304
    ifconfig.me port:63305
    
    real        0m6.519s
    user        0m0.241s
    sys         0m0.186s
    
    ifconfig.me port:63306
    ifconfig.me port:63306
    ifconfig.me port:63306
    
    real        0m0.177s
    user        0m0.269s
    sys         0m0.202s
