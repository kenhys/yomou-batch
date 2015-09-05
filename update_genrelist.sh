#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    i=1
    while [ $i -le 15 ]; do
	yomou genrerank $1 download $i
	i=`expr $i + 1`
	sleep 3
    done
    log $0 "execute genrerank $1 download"
else
    log $0 "failed to execute genrerank $1 download"
fi
