if [ "$TRAVIS_OS_NAME" == "osx" ]; then
  export PATH="/Users/travis/.pyenv/shims:${PATH}"
  export PYENV_VERSION=3.3.6
  python --version
fi

python test.py

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
