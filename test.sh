if [ -z $CAN_SUDO ]
then
  python test.py
else
  sudo python test.py
  ping -c 1 8.8.8.8
fi
