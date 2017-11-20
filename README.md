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


以后系统包管理做了什么变动可以在 pacman.log 的 commit 看了
如果你 fork 了请先把 pacman.log 内容清理掉
