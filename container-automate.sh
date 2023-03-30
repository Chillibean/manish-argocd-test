#!/bin/bash

# #echo "installing essentails test..."
# apt-get -y update && \
# apt-get -y install git && \
# which git

echo "create namespace folder name..."
namespace_id=$RANDOM
echo "namespace ID: $namespace_id"

pwd
ls -l





# cd /tmp
# git clone https://github.com/Chillibean/manish-argocd-test.git
# values_file="/tmp/manish-argocd-test/my-mongodb/environments/development/values-${namespace_id}.yaml"

# if [ -f "$values_file" ]; then
#     echo "$values_file exists."
#     exit 1
# else 
#     echo "Creating helm values file $values_file"
#     touch $values_file
#     git add $values_file
#     git commit -m "Added values file for namespace ${namespace_id}"
#     git push
# fi