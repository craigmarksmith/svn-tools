#!/bin/bash

echo "Stashing..."

svn st | grep "?" | sed "s/\?//g" | grep -v "vendor" | xargs svn add
svn diff > ../stash/stash.diff
svn revert . -R
svn st | grep "?" | sed "s/\?//g" | grep -v "vendor" | xargs rm -rf "{}" \;

echo "Stashed!"