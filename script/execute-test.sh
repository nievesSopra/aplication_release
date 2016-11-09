#!/usr/bin/env bash

echo "Executing the execute-test.sh file"

REGEX_TAG="(.*)-TESTME"
#REGEX_TAG="(.*)-t(.*)"


#if [[ "${TRAVIS_TAG}" =~ ${REGEX_TAG} ]]; then
  # Save version
#  VERSION=${BASH_REMATCH[1]};

  echo "${VERSION}"

  echo “TRAVIS TAG: ${TRAVIS_TAG} TRAVIS_REPO_SLUG: ${TRAVIS_REPO_SLUG}”

  # POST /repos/:owner/:repo/releases
#curl -s -k -X POST -H "Content-Type: application/json" https://${TRAVIS_TOKEN}@github.com/nievesSopra/sauce-project.git -d '{"tag_name": "1234", "target_commitish": "master", "name": "1234", "body": "Release of version 1234", "draft": false, "prerelease": false}'
#curl --data '{"tag_name": "v1.0.0","target_commitish": "master","name": "v1.0.0","body": "Release of version 1.0.0","draft": false,"prerelease": false}' https://api.github.com/repos/:owner/:repository/releases?access_token=:access_token

#curl -u travis-arq-testing:${TRAVIS_TOKEN} --request POST --data '{"tag_name": "v1.0.2-curl","target_commitish": "master","name": "v1.0.2-curl","body": "Release of version 1.0.2","draft": false,"prerelease": false}' https://api.github.com/repos/nievesSopra/sauce-project/releases

# Create release in sauce-project repository
#API_JSON=$(printf '{"tag_name": “v%s-TESTME”,”target_commitish": "master","name": “v%s-TESTME”,”body": "Release of version %s-TESTME”,”draft": false,"prerelease": false}' $VERSION $VERSION $VERSION)
#curl -u travis-arq-testing:${TRAVIS_TOKEN} --request POST --data “$API_JSON” https://api.github.com/repos/nievesSopra/sauce-project/releases

#API_JSON=$(printf '{"tag_name": "v%s","target_commitish": "master","name": "v%s","body": "Release of version %s","draft": false,"prerelease": false}' $VERSION $VERSION $VERSION)
#curl --data "$API_JSON" https://api.github.com/repos/:owner/:repository/releases?access_token=:access_token

#fi
