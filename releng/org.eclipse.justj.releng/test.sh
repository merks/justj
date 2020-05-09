#!/bin/bash -ex

echo "OSTYPE=$OSTYPE"

if [[ $OSTYPE == darwin* ]]; then
  os=mac
elif [[ $OSTYPE == cygwin ||  $OSTYPE = msys ]]; then
  os=win
else
  os=linux
fi

ls -R > $os.result