#!/bin/bash

. update_common.sh

if [ -f .bashrc ]; then
    . .bashrc
    yomou secondrank yearly download
    log $0 "execute secondrank yearly download"
else
    log $0 "failed to execute secondrank yearly download"
fi
