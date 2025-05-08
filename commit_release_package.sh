#!/bin/bash

RELEASE=$1
COMMENT=$2

if [ -z "$RELEASE" ] || [ -z "$COMMENT" ]
then
    echo -e "\n You must provide release version and commit's message. Ex: ./commit_release_package.sh v0.0.1 "First realease" \n"
    exit 1
fi

git commit -m "$COMMENT"

git push

gh release create $RELEASE --notes "$COMMENT"
