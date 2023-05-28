#!/usr/bin/env bash
set -e

# configuring for multi-node
# https://weaviate.io/developers/weaviate/config-refs/env-vars#multi-node-setups
export CLUSTER_HOSTNAME=${FLY_ALLOC_ID}.vm.${FLY_APP_NAME}.internal

if [ "$FLY_PROCESS_GROUP" == "replica" ]; then
    export CLUSTER_JOIN=primary.process.${FLY_APP_NAME}.internal
fi

echo "starting ${FLY_PROCESS_GROUP} node"
echo "CLUSTER_HOSTNAME=${CLUSTER_HOSTNAME}"
echo "CLUSTER_JOIN=${CLUSTER_JOIN}"

exec "$@"
