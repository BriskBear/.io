#!/bin/bash

ver="$1"
mes="${@: 2}"

git tag -a "$ver" -m "$mes" && \
  git push origin "$ver"
