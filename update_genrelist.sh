#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    yomou genrerank $1 download
    log $0 "execute genrerank $1 download"
else
    log $0 "failed to execute genrerank $1 download"
fi
