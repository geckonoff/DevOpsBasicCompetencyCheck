#!/bin/bash

result=$( docker run --name devops-test-container -d devops-test-image )

if [[ -n "$result" ]]; then
  echo "Started successfull"
else
  echo "Error starting"
fi