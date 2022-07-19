#!/usr/bin/env bash

export CAM_SRC="/run/media/$USER/disk/"
export CAM_PIC_SRC="$CAM_SRC/DCIM/100MSDCF"

# TODO: this is actually garbage lol, when importing pictures we should sort them
# by their metadata, not by todays date and CERTAINLY not in an env variable which could
# be in a shell started days ago

# a dated directory to store 
today="`date +%Y`/`date +%m`/`date +%d`"
export CAM_TODAY="$HOME/pic/cam/$today"
