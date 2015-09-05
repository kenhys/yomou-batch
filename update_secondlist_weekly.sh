#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    yomou secondrank weekly download
    log $0 "execute secondrank weekly download"
else
    log $0 "failed to execute secondrank weekly download"
fi
