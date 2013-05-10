# fcache

## Usage
    Usage: fcache EXPIRE_SEC COMMAND [ARGS]
        EXPIRE_SEC :  expire sec
        COMMAND    :  any command
        ARGS       :  command line arguments

## Example
    $ cd example
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
