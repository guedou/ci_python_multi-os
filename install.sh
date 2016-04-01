if [ ! -z $DO_PCAPDNET ]
then
  if [ $TRAVIS_OS_NAME = "linux" ]
  then
    sudo apt-get install libpcap-dev
  fi
  sudo pip install pcapy dnet-real
fi
