#!/usr/bin/env bash

changes() {
  echo "$(git diff --name-only --diff-filter=AMR --cached HEAD^)"
}

changed=$(changes | grep -c "htmobile-ui")

echo "!!!!!"
echo changes
echo changed

echo "Hello"
# if [ $changed -eq 0 ]; then
  exit 0;
# fi
