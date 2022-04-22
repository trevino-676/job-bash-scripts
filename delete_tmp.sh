#!/bin/bash

# Script name delete_tmp.sh
# Script for removing all temporary file from temporary directory

TMP_DIR="/tmp"
echo "Removing all temporary files from $TMP_DIR"

# Counting the number of temporary files
files=`ls -l $TMP_DIR | wc -l`

echo "There are total $files temporary files/directory in $TMP_DIR"

rm -rf $TMP_DIR/* 2>/dev/null

if [[ "$?" -eq "0" ]];then
	echo "All temporary files are removed successfully"
fi

# Counting the number of temporary files
files=`ls -l $TMP_DIR | wc -l`

echo "There are total $files temporary files/directory in $TMP_DIR directory"
