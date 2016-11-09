#!/usr/bin/env bash

echo "Executing the execute-test.sh file"

REGEX_TAG="(.*)-TESTME"
#REGEX_TAG="(.*)-t(.*)"


#if [[ "${TRAVIS_TAG}" =~ ${REGEX_TAG} ]]; then
  # Save version
  VERSION=${BASH_REMATCH[1]}-Results;
  AUXBRANCH=${VERSION}-Branch01;
  echo "${VERSION}-Branch01"

  # POST /repos/:owner/:repo/releases
curl -s -k -X POST -H "Content-Type: application/json" https://${TRAVIS_TOKEN}@github.com/nievesSopra/sauce-project.git -d '{"tag_name": "1234", "target_commitish": "master", "name": "1234", "body": "Release of version 1234", "draft": false, "prerelease": false}'
 
  # Configurating git (user.mail and user.name)
#  echo "Configurate git"
#  git config --global user.email "you@example.com";
#  git config --global user.name "travis-arq-test";




  # Create the new branch (branch01) and add the folder
#  echo "Creating a new branch"
#  echo "Initialice the repository"
#  git init;
#  echo "Add a remote repository"
#  git remote add test-output https://${TRAVIS_TOKEN}@github.com/nievesSopra/sauce-project.git;
#  echo "Creat checkout of the branch"
#  git checkout -b ${VERSION}-Branch01;
#  echo "Adding test folder to the branch"
#  git add -f ${VERSION};
#  echo "Commit the changes"
#  git commit -m "add results folder";
#  echo "Saving changes in the github respository"
#  git push -u test-output ${VERSION}-Branch01;

#  echo "Merge between the bratch and master"
  #Merge branch01 into master branch:
#  git fetch;
#  git checkout -f master;
#  git merge ${VERSION}-Branch01 -m "Merged branches";
#  git push -u test-output master;

  #Delete the branch we created before (branch01):
#  git push test-output --delete ${VERSION}-Branch01

#fi
