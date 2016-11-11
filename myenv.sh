#!/bin/bash

# Get the directory of this script
# from http://stackoverflow.com/questions/59895/can-a-bash-script-tell-which-directory-it-is-stored-in
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

export ARCHAPPL_SHORT_TERM_FOLDER="$DIR/storage/sts"
export ARCHAPPL_MEDIUM_TERM_FOLDER="$DIR/storage/mts"
export ARCHAPPL_LONG_TERM_FOLDER="$DIR/storage/lts"
export ARCHAPPL_DB_FOLDER="$DIR/storage/db"
export ARCHAPPL_SCRIPTS_FOLDER="$DIR/files/scripts"
export ARCHAPPL_DEFAULT_FOLDER="$DIR/files/default"
export ARCHAPPL_ETC_FOLDER="$DIR/files/etc"



