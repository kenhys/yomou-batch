#!/bin/bash

function log()
{
    DATE=`date +'%Y%m%d-%H%M%S'`
    mkdir -p logs
    SCRIPT_DIR=`dirname $1`
    SCRIPT_NAME=`basename $1 .sh`
    echo "$DATE: $@" >> $SCRIPT_DIR/logs/$SCRIPT_NAME.log
}
