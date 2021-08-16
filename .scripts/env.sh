#!/usr/bin/env bash

# source env scripts in subdirectories

source $SCRIPTS/cam/env.sh
source $SCRIPTS/img/env.sh

export PATH=$PATH:$SCRIPTS
export PATH=$PATH:$SCRIPTS/cam
export PATH=$PATH:$SCRIPTS/img
