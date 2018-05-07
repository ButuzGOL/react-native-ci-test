#!/usr/bin/env bash

changes() {
  echo "$(git diff --name-only --diff-filter=AMR --cached HEAD^)"
}

changed=$(changes | grep -c "htmobile-ui")

curl -i -X PATCH -H "X-API-Token:bb6f887a-bd87-46a8-81f1-466a7d66589d" -H "Content-Type: application/json" -d "{\"status\":\"cancelling\"}" https://appcenter.ms/api/v0.1/apps/ButuzGOL/rn-ci-test-android/builds/$APPCENTER_BUILD_ID 

# if [ $changed -eq 0 ]; then
#   echo "No folder"
#   exit 1
# fi
