/usr/bin/$*
echo ${0%/*}
name=package
HOST=`cat /etc/hostname`
LOCAL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$2" =~ "-S" ]] || [[ "$2" =~ "-R" ]] && [ "$1"="pacaur" ]; then
  echo "ha"
  pacman -Qnq > "$LOCAL"/$name"-"$HOST".txt"
  pacman -Qmq >> "$LOCAL"/$name"-"$HOST".txt"
  cd $LOCAL
  git add .
  git commit -m "package list update"
  git push
fi
