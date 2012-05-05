#!/bin/bash

repos=( 
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Legacy-Parsley-Commands"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Parsley-Core"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Parsley-Logging-Tags"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Spicelib-Commands"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Spicelib-Reflect"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Legacy-Spicelib-Tasks"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Parsley-Documentation"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Parsley-Pimento-Support"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Spicelib-Documentation"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Spicelib-Util"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Legacy-Spicelib-Util"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Parsley-Flash-Resources"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Parsley-Popup"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Spicelib-Logging"
  "/Users/jexchan/personal/opensource/git_repository/spicefactory/Spicelib-XML-Mapper"
)

echo "Checking" ${#repos[@]} "repositories for updates"

for repo in "${repos[@]}"
do
  echo "updating" ${repo}
  cd "${repo}"
  git pull
done