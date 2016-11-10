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
#curl -u travis-arq-testing:${TRAVIS_TOKEN} --request POST --data '{"tag_name": "v1.0.2-curl","target_commitish": "master","name": "v1.0.2-curl","body": "Release of version 1.0.2","draft": false,"prerelease": false}' https://api.github.com/repos/nievesSopra/sauce-project/releases

# Create release in sauce-project repository
#API_JSON=$(printf '{"tag_name": "v%s","target_commitish": "master","name": "v%s","body": "Release of version %s","draft": false,"prerelease": false}' $VERSION $VERSION $VERSION)
#curl -u travis-arq-testing:${TRAVIS_TOKEN} --request POST --data "$API_JSON" https://api.github.com/repos/nievesSopra/sauce-project/releases

JSON_FILE=$(cat script/create_release_automation.json | sed -e "s/\${VERSION}/${VERSION}/g")
curl -u travis-arq-testing:${TRAVIS_TOKEN} --request POST --data "${JSON_FILE}" https://api.github.com/repos/nievesSopra/sauce-project/releases

fi
