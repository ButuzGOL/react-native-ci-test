#!/usr/bin/env bash

changes() {
  echo "$(git diff --name-only --diff-filter=AMR --cached HEAD^)"
}

changed=$(changes | grep -c "htmobile-ui")

echo "!!!!!"
echo changes
echo changed

# if [ $changed -eq 0 ]; then
  exit;
# fi
