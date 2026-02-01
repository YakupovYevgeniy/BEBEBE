#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./scripts/common_push.sh \"commit message\" [tag]"
  exit 1
fi

MSG="$1"
TAG="$2"

git status
git add .
git commit -m "$MSG"

if [ -n "$TAG" ]; then
  git tag "$TAG"
fi

git push origin HEAD
git push origin --tags

echo "✅ Pushed. ${TAG:+Tagged: $TAG}"
