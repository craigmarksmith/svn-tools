#!/bin/bash

if [ -f  ../stash/stash.diff ]
then
  echo "Popping stash..."
  patch -p0 < ../stash/stash.diff
  rm ../stash/stash.diff
  echo "Popped!"
else
  echo "Sorry, no stash file exists"
fi
