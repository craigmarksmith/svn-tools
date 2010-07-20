#!/bin/bash

echo "Popping stash..."

patch -p0 < ../stash/stash.diff
rm ../stash/stash.diff

echo "Popped!"