#!/usr/bin/env bash

DEPLOY_DIR=$(pwd)
. config.sh
cd $PROJECT_DIR
$BUILD_COMMAND
cd $DEPLOY_DIR
cp -R $PROJECT_DIR_BUILD/* html/
git add html/
git commit -am "Build"
git push dokku +master
