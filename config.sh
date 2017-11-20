/usr/bin/$*
name=package
HOST=`cat /etc/hostname`
if [ "$2" = "-Syu" ]; then
  echo "ha"
  pacman -Qnq > ./$name"-"$HOST".txt"
  pacman -Qmq >> ./$name"-"$HOST".txt"
fi
