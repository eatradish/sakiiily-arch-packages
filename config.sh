LOCAL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
name=package
HOST=`cat /etc/hostname`
cd $LOCAL
git pull
/usr/bin/$*
if [[ "$2" =~ "-S" ]] || [[ "$2" =~ "-R" ]] && [ "$1"="pacaur" ]; then
  if [[ "$2" =~ "-Ss" ]]; then
    exit 0
  else
    pacman -Qnq > "$LOCAL"/$name"-"$HOST".txt"
    pacman -Qmq >> "$LOCAL"/$name"-"$HOST".txt"
    cp /var/log/pacman.log $LOCAL/pacman-$HOST.log
    cd $LOCAL
    git add .
    git commit -m "package list update"
    git push
  fi
fi

