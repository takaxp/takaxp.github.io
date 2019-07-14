#!/bin/sh

SRC=$HOME/Dropbox/emacs.d/config
DST=$HOME/devel/git/takaxp.github.io

if [ -d $SRC -a -d $DST ]; then
    cp $SRC/init.html $DST
    cp $SRC/utility.html $DST
fi

git pull
git add init.html utility.html update.sh index.html
git commit
git push

echo "--- done."
