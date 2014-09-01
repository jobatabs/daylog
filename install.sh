#!/bin/bash

PREF_rem="--PREFIX="
STOR_rem="--STORAGE="
MAN_rem="--MAN_LOC="
slash="/"

for i in $*; do
    if [[ $i == *MAN_LOC* ]]; then
        MAN_LOC=${i#$MAN_rem}
        MAN_LOC=${MAN_LOC%$slash}
    fi

    if [[ $i == *PREFIX* ]]; then
        PREFIX=${i#$PREF_rem}
        PREFIX=${PREFIX%$slash}
    fi

    if [[ $i == *STORAGE* ]]; then
        STORAGE=${i#$STOR_rem}
        STORAGE=${STORAGE%$slash}
    fi
done

if [[ -z "$PREFIX" ]]; then
    PREFIX="/usr/local/bin"
fi

if [[ -z "$STORAGE" ]]; then
    STORAGE="~/.dl/logs"
fi

if [[ -z "$MAN_LOC" ]]; then
    MAN_LOC="/usr/share/man/man1"
fi

echo ""
echo "Installing dl to $PREFIX"
echo "Logs will be stored in $STORAGE"
echo "Copying man page to $MAN_LOC"
echo ""

echo LOGDIR="$STORAGE" > ~/.dl/daylog.conf

sudo cp -n ./bin/dl $PREFIX/dl
sudo cp -n ./share/man/man1/dl.1 $MAN_LOC/dl.1

# Everything can always go wrong with access control
sudo chmod a+x $PREFIX/dl

echo "All done!"
echo ""
echo "A config file has been created in ~/.dl/daylog.conf"
echo "Please ensure that $PREFIX is in your PATH to run dl"
echo ""
