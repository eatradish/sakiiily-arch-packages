# sakiiily-arch-packages
方便快速部署 Arch Linux

## config

```
# pacaman -S pacaur
$ git clone https://github.com/eatradish/sakiiily-arch-packages.git
#add (alias pacaur="/path/sakiiily-arch-packages/config.sh pacaur") to .bashrc or .zshrc
HOST=`cat /etc/hostname`
cat package-$HOST.txt
...



