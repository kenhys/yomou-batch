#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    yomou secondrank monthly download
    log $0 "execute secondrank monthly download"
else
    log $0 "failed to execute secondrank monthly download"
fi
