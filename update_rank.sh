#!/bin/bash

BATCH_DIR=`dirname $0`
. $BATCH_DIR/update_common.sh

if [ -f $BATCH_DIR/.bashrc ]; then
    . $BATCH_DIR/.bashrc
    $YOMOU rank $1 download
    log $0 "execute rank $1 download"
else
    echo "$0 failed to execute rank $1 download" 1>&2
fi
