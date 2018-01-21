# Inspired by https://pythonhosted.org/CodeChat/.travis.yml.html

if [ "$TRAVIS_OS_NAME" == "osx" ]; then
  brew install openssl readline pyenv
  pyenv install $PYTHON
  export PATH="/Users/travis/.pyenv/shims:${PATH}"
  export PYENV_VERSION=3.3.6
  python --version
fi
