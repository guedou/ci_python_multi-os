import os
import sys

print sys.version
print sys.platform
print os.getuid()

try:
    import pcapy
    print "pcapy is installed"
except:
    print "pcapy is NOT installed"
    pass

try:
    import dnet
    print "dnet is installed"
except:
    print "dnet is NOT installed"
    pass
