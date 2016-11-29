#!/usr/bin/env bash

echo "Executing the execute-test.sh file"

REGEX_TAG="(.*)-TESTME"
#REGEX_TAG="(.*)-t(.*)"


if [[ "${TRAVIS_TAG}" =~ ${REGEX_TAG} ]]; then
  # Save version
  #VERSION=${BASH_REMATCH[1]};
  VERSION=${TRAVIS_TAG};
  echo "${VERSION}"
  echo "TRAVIS TAG: ${TRAVIS_TAG} TRAVIS_REPO_SLUG: ${TRAVIS_REPO_SLUG}"
  REPO_NAME=$(echo ${TRAVIS_REPO_SLUG} | cut -f2 -d/)
  echo "REPO_NAME=${REPO_NAME}"

# POST /repos/:owner/:repo/releases
JSON_FILE=$(cat script/create_release_automation.json | sed -e "s/\${VERSION}/${VERSION}/g")
curl -u ${GITHUB_USER}:${TRAVIS_TOKEN} --request POST --data "${JSON_FILE}" https://api.github.com/repos/${GITHUB_USER}/sauce-project/releases

fi
