#!/bin/bash

function log()
{
    DATE=`date +'%Y%m%d-%H%M%S'`
    echo "$DATE: $@" >> logs/$1.log
}
