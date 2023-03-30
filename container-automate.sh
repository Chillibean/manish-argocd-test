#!/bin/bash
git config --global user.email "manish@chillibean.tv"
git config --global user.name "mvadgama"
git config --global push.default simple

echo "create namespace folder name..."
namespace_id=$RANDOM
echo "namespace ID: $namespace_id"

values_file="my-mongodb/environments/development/values-${namespace_id}.yaml"

if [ -f "$values_file" ]; then
    echo "$values_file exists."
    exit 1
else 
    echo "Creating helm values file in $values_file"
    touch $values_file
    git add $values_file
    git commit -m "Added values file for namespace ${namespace_id}"
    git push
fi