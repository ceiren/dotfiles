#!/bin/sh
#
# WARNING: DO NOT USE!!!
# FIXME: copies the entire home directory when &CONF_PATH is an empty newline lol!
# FIXME: currently it only copies the file and does not remove old files
# TODO: rewrite this piece of shit

set -e

SOURCE_PATH="sources.txt"

while read file; do
  CONF_PATH=$HOME/"$file"
# then
if [[ -d $CONF_PATH || -f $CONF_PATH ]]
then
    echo "syncing $CONF_PATH ..."
    cp -R $CONF_PATH .
else
    echo "$CONF_PATH: no such file or directory"
fi
done <$SOURCE_PATH
echo "all files are synced"
