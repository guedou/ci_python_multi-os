import os
import sys

print sys.version
print sys.platform
print os.getuid()

try:
    import pcapy
    print "pcapy is installed"
except:
    pass

try:
    import dnet
    print "dnet is installed"
except:
    pass
