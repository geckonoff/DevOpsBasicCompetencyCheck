#!/bin/bash

result=$( docker build -t devops-test-image . )

if [[ -n "$result" ]]; then
  echo "Image exists"
else
  echo "Image does not exist"
fi