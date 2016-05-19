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
    import pcap
    print "pcap is installed"
except:
    print "pcap is NOT installed"
    pass

try:
    import dnet
    print "dnet is installed"
except:
    print "dnet is NOT installed"
    pass

try:
    import dumbnet
    print "dumbnet is installed"
except:
    print "dumbnet is NOT installed"
    pass

try:
    import Crypto
    print "pycrypto is installed"
except:
    print "pycrypto is NOT installed"
    pass
