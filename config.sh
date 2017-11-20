/usr/bin/$*
name=package
HOST=`cat /etc/hostname`
LOCAL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$2" =~ "-S" ]] || [[ "$2" =~ "-R" ]] && [ "$1"="pacaur" ]; then
  if [[ "$2" =~ "-Ss" ]]; then
    exit 0
  else
    pacman -Qnq > "$LOCAL"/$name"-"$HOST".txt"
    pacman -Qmq >> "$LOCAL"/$name"-"$HOST".txt"
    cp /var/log/pacman.log $LOCAL
    cd $LOCAL
    git add .
    git commit -m "package list update"
    git push
  fi
fi

