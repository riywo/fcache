#!/usr/bin/env python
from subprocess import *
import json
import sys

key = sys.argv[1]
p = Popen("../fcache 10 curl -s ifconfig.me/all.json", shell=True, stdout=PIPE)
stat = json.loads(p.communicate()[0])
print "ifconfig.me %s:" % key + stat[key]
