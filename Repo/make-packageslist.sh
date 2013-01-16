#!/bin/bash

rm packages.txt
ls -d -- * > packages.txt
echo "Package list compiled."
