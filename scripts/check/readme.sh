#!/usr/bin/env bash
set -euo pipefail

if [ ! -f "README.md" ]; then
  echo "[README CHECK] FAILED: README.md not found."
  exit 1
fi

missing=0

for token in "Twitch Emotes" "Minimap" "Autocomplete" "Known issues" "CHANGELOG.md"; do
  if ! grep -Fq "$token" README.md; then
    echo "[README CHECK] FAILED: Missing expected README token: $token"
    missing=1
  fi
done

if [ "$missing" -ne 0 ]; then
  exit 1
fi

echo "[README CHECK] PASSED: README usage coverage looks good."
