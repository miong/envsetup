#!/bin/bash

## This scrip install the configs
# It needs to be started from envsetup directory

find config -type f -exec sed -i "s/SETUPTHEUSERNAME/$USER/g" {} \;

cp -rv config/* $HOME/.config/.

find config -type f -exec sed -i "s/$USER/SETUPTHEUSERNAME/g" {} \;

echo "Installation done"
