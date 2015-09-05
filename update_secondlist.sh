#!/bin/bash

BATCH_DIR=`dirname $0`
. $BATCH_DIR/update_common.sh

if [ -f $BATCH_DIR/.bashrc ]; then
    . $BATCH_DIR/.bashrc
    yomou secondrank $1 download
    log $0 $1 "execute secondrank $1 download"
else
    echo "$0 $1 failed to execute secondrank $1 download" 1>&2
fi
