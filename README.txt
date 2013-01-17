A NOTE: This installer technically can use any mod archive format
supported by 7z which includes zip 7z tar.gz tar.bz2 etc.

These scripts allow you to easily install and
update mods from a repo. packmod also is used
to pack your mod for use with the installer and
compresses to 7z archive.

mtmodinstall:
# How to use:
# Update REPO URL if needed then
# chmod u+x nameofscript
# issue ./nameofthisscript modname
#
# Example:
# ./mtmodinstall.sh industrial


packmod-7z:
# Packs your mod to work with the modinstaller script included here
#
# How to use:
# chmod u+x scriptname
# then
# ./scriptname modname modname_version
#
# Example:
# ./packmod-7z.sh industrial industrial_0.0.5
#
# IMPORTANT: your mod folder must be properly named
# such as industrial and not industrial-master or anything else

packmod-zip:
# Packs your mod to work with the modinstaller script included here
#
# How to use:
# chmod u+x scriptname
# then
# ./scriptname modname modname_version
#
# Example:
# ./packmod-zip.sh industrial industrial_0.0.5
#
# IMPORTANT: your mod folder must be properly named
# such as industrial and not industrial-master or anything else

make-packageslist:
Just run it to make a packages.txt
