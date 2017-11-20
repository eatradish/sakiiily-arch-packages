#1/bin/bash
LOCAL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOST=`cat /etc/hostname`
LIST=`sed -i "s/\n/ /g" $LOCAL/package-$HOST.txt`
echo $LIST
/usr/bin/pacaur -Syyu $LIST
$LOCAL/config.sh pacaur -Syu
