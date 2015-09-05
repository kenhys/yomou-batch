#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    yomou secondrank daily download
    log $0 "execute secondrank daily download"
else
    log $0 "failed to execute secondrank daily download"
fi
