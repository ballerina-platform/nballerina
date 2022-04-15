#!/bin/bash
if [[ -z $(grep '[^[:space:]]' "$1") ]] ; then
  echo "expected panic"
fi
