if [ -z $CAN_SUDO ]
then
  python test.py
else
  sudo python test.py
fi

ping -c 1 8.8.8.8
