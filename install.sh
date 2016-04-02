if [ ! -z $DO_PCAPDNET ]
then
  if [ "$TRAVIS_OS_NAME" = "linux" ]
  then
    sudo apt-get install python-pcapy python-dumbnet
  fi
  if [ "$TRAVIS_OS_NAME" = "osx" ]
  then
    sudo brew update
    sudo brew install --with-python libdnet
  fi
fi
