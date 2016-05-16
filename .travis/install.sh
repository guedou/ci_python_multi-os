if [ ! -z $DO_PCAPDNET ]
then
  if [ "$TRAVIS_OS_NAME" = "linux" ]
  then
    sudo apt-get install python-pcapy python-dumbnet
  fi
  if [ "$TRAVIS_OS_NAME" = "osx" ]
  then
    mkdir -p /Users/travis/Library/Python/2.7/lib/python/site-packages
    echo 'import site; site.addsitedir("/usr/local/lib/python2.7/site-packages")' >> /Users/travis/Library/Python/2.7/lib/python/site-packages/homebrew.pth
 
    brew update
    brew install --with-python libdnet
    brew install .travis/pylibpcap.rb
  fi
fi
