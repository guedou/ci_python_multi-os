if [ -z $CAN_SUDO ]
then
  python test.py
else
  if [ "$TRAVIS_OS_NAME" = "osx" ]
  then
    export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages
  fi
  sudo python test.py
  ping -c 1 8.8.8.8
fi
