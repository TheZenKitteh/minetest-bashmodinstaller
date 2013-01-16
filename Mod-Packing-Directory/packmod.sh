#!/bin/bash
#
# Packs your mod to work with the modinstaller script included here
#
# How to use:
# chmod u+x scriptname
# then
# ./scriptname modname modname_version
#
# Example:
# ./packmod industrial industrial_0.0.5
#
# IMPORTANT: your mod folder must be properly named
# such as industrial and not industrial-master or anything else

# Packaging
./7z a -t7z -mx9 ./Packed-Mods/"$2".7z "$1"

echo "check to make sure mod was packed correctly"
