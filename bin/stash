#!/bin/bash

if [ -f  ../stash/stash.diff ]
then
  echo "Sorry, there's some stuff already in the stash and no one has extended me to handle that yet. Fix me or clear the stash."
else
  echo "Stashing..."
  svn st | grep "?" | sed "s/\?//g" | grep -v "vendor" | xargs svn add
  svn diff > ../stash/stash.diff
  svn revert . -R
  svn st | grep "?" | sed "s/\?//g" | grep -v "vendor" | xargs rm -rf "{}" \;
  echo "Stashed!"
fi
