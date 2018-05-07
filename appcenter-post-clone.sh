#!/usr/bin/env bash

changes() {
  echo "$(git diff --name-only --diff-filter=AMR --cached HEAD^)"
}

changed=$(changes | grep -c "htmobile-ui")
echo "TTTTTTTTTTTT"
echo $APPCENTER_REACTNATIVE_PACKAGE
curl -i -X PATCH -H "X-API-Token:ece7b10ec8e809cc45c29823538cb85601cda5cf" -H "Content-Type: application/json" -d "{\"status\":\"cancelling\"}" https://appcenter.ms/api/v0.1/apps/ButuzGOL/rn-ci-test-android/builds/$APPCENTER_BUILD_ID 

# if [ $changed -eq 0 ]; then
#   echo "No folder"
#   exit 1
# fi
