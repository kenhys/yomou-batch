#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    yomou secondrank $1 download
    log $0 "execute secondrank $1 download"
else
    log $0 "failed to execute secondrank $1 download"
fi
