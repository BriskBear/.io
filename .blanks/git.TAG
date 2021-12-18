#!/bin/bash

git_tag() {
ver="$1"
mes="${@: 2}"

git tag -a "$ver" -m "$mes" && \
  git push origin "$ver"
}

git_tag "$@"
