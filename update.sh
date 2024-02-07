#!/bin/bash
modules=(
  netlify-identity
)
for module in ${modules[@]}; do
  echo "Updating modules for modules/$module"
  cd "modules/$module"
  hugo mod get -u
  hugo mod tidy
  cd -
done 
