#!/bin/bash

# Chane below to the location of your minetest mods folder
#INSTALLLOC="$HOME/.minetest/usermods"
INSTALLLOC="./mods/minetest"

# Putting the location of this script into a variable
SLOC=$(pwd)

# Getting current date
NOW=$(date +"%m_%d_%Y--%H:%M:%S")

# Fetching packages list
rm ./packagesgit.txt
wget https://raw.github.com/TheZenKitteh/minetest-modrepo/master/packagesgit.txt

# Get full mod name for use in URL and extraction
MOD=$(grep -i "$1" ./packagesgit.txt)
 
# fetching desired package
wget "$MOD"

# Backing up old mod
cd "$INSTALLLOC"
"$SLOC"/Mod-Packing-Directory/7z a -t7z -mx9 "$SLOC"/Mod-Backups/"$1""$NOW".7z "$1"
rm -rf "$1"
cd "$SLOC"

# Extracting mod to mod folder
./Mod-Packing-Directory/7z x *master* -o"$INSTALLLOC"

mv "$INSTALLLOC"/*"$1"* "$INSTALLLOC"/$1

# Cleaning up
rm *master*
rm packagesgit.txt
