#!/bin/bash

cd $GOPATH/src/$1

echo "change branch to development and pull"
git checkout development
git pull origin development

echo "Creating new branch: release/$(echo $2)"
git checkout -b release/$2
echo "Branch created"

echo "Adding tag to HEAD"
git tag $2
echo "Tag created"

echo "Pushing to origin"
git push origin release/$2 --tag

echo "Branch pushed"
