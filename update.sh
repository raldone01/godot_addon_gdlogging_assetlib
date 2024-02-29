#!/bin/bash

orig_cwd=$(pwd)

# cd to the directory of the script
cd "$(dirname "$0")"

mkdir -p addons
cd addons

rm -rf gdlogging
git clone git@github.com:raldone01/godot_addon_gdlogging.git gdlogging
cd gdlogging
git checkout $1
rm -rf .git

cd $orig_cwd
