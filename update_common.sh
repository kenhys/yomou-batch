#!/bin/bash

function log()
{
    DATE=`date +'%Y%m%d-%H%M%S'`
    mkdir -p logs
    echo "$DATE: $@" >> logs/$1.log
}
