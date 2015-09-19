#!/bin/bash

BATCH_DIR=`dirname $0`
. $BATCH_DIR/update_common.sh

if [ -f $BATCH_DIR/.bashrc ]; then
    . $BATCH_DIR/.bashrc
    $YOMOU atom download
    log $0 "execute atom download allnovel"
else
    echo "$0 failed to execute atom download allnovel" 1>&2
fi
