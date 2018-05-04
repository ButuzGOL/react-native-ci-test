#!/usr/bin/env bash

changes() {
  echo "$(git diff --name-only --diff-filter=AMR --cached HEAD^)"
}

changed=$(changes | grep -c "htmobile-ui")

if [ $changed -eq 0 ]; then
  echo "No folder"
  exit 1
fi
