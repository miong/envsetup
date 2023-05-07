#!/bin/bash

## This scrip update existing saved config from host values
# It needs to be started from envsetup directory

unfinded_files=()

for file in $(find config -type f | sort)
do
  hostfile="$HOME/.$file"
  if test -f $hostfile
  then
    echo "Updating $file"
    cp $hostfile $file
  else
    unfinded_files+=( $file )
  fi
done

find config -type f -exec sed -i "s/$USER/SETUPTHEUSERNAME/g" {} \;

echo "Update done"
for file in ${unfinded_files[@]}
do
  echo "Missing $file, skipped"
done
