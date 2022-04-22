#!/bin/bash

echo -e "Hello, you'll create a hotfix branch\n"
read -p "Enter the name of the hotfix branch: " hotfix_branch
read -p "Enter the iservice that will create the hotfix: " iservice
echo -e "\n"

cd $GOPATH/src/$iservice > /dev/null 2>&1

if [[ $? -eq 1 ]] 
then
		echo -e "The iservice you entered doesn't exist\n"
		exit 1
fi

git checkout master &&  git pull origin master
git checkout -b $hotfix_branch
git push origin $hotfix_branch

echo -e "\nThe hotfix branch was created"
exit 0
