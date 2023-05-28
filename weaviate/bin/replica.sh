#!/bin/sh

export CLUSTER_HOSTNAME=${FLY_ALLOC_ID}.vm.${FLY_APP_NAME}.internal
export CLUSTER_JOIN=primary.process.${FLY_APP_NAME}.internal

echo "starting replica node"
echo "CLUSTER_HOSTNAME=${CLUSTER_HOSTNAME}"
echo "CLUSTER_JOIN=${CLUSTER_JOIN}"

env weaviate --host fly-local-6pn --port 8080 --scheme http
