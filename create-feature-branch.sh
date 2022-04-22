#!/bin/bash

cd $GOPATH/src/$1>/dev/null

if [[ $? -eq 1 ]] 
then
	echo "The directory $(echo $1) doesn't exist'"
	exit 1
fi

git checkout master && git pull origin master
git checkout development && git pull origin development
echo "Updated master and development branches"

branch_name="feature/$2"
git checkout -b $branch_name
git push origin $branch_name
echo "$branch_name"
