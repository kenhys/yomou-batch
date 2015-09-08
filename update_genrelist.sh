#!/bin/bash

BATCH_DIR=`dirname $0`
. $BATCH_DIR/update_common.sh

if [ -f $BATCH_DIR/.bashrc ]; then
    . $BATCH_DIR/.bashrc
    i=1
    while [ $i -le 15 ]; do
	$YOMOU genrerank $1 download $i
	i=`expr $i + 1`
	sleep 3
    done
    log $0 "execute genrerank $1 download"
else
    echo "$0 failed to execute genrerank $1 download" 1>&2
fi
