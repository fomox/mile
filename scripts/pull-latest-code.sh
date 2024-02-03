#!/bin/bash
BRANCH=${MAPIC_MILE_BRANCH:-ngi-2023}
echo "Checking out $BRANCH"
git remote set-url origin https://github.com/mapic/mile.git
git checkout $BRANCH
git pull origin $BRANCH
git remote set-url origin git@github.com:mapic/mile.git
