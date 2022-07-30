#!/bin/sh

SRC=$HOME/Dropbox/emacs.d/config
ART=$HOME/Dropbox/org/articles
DST=$HOME/devel/git/takaxp.github.io

git fetch
git pull

if [ -d $SRC -a -d $DST ]; then
    cp $SRC/init.html $DST
#    cp $SRC/utility.html $DST
fi

if [ -d $ART -a -d $DST ]; then
    cp $ART/*.html $DST/articles
    cp $ART/*.org $DST/articles
fi

git add *.html *.org update.sh
git add articles/*.html articles/*.org
git add files/*
git commit
git push

echo "--- done."
