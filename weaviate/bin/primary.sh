#!/bin/sh

export CLUSTER_HOSTNAME=${FLY_ALLOC_ID}.vm.${FLY_APP_NAME}.internal

echo "starting primary node"
echo "CLUSTER_HOSTNAME=${CLUSTER_HOSTNAME}"

weaviate --host fly-local-6pn --port 8080 --scheme http
