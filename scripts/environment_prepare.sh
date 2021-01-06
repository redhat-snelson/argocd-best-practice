#!/usr/bin/bash

declare env=${1:-"prod"}
declare test=${2:-"test"}

echo "== Updating dependency charts for umbrella =="
helm dependency update bootstrap/charts/umbrella
echo "== Updating dependency charts for ${env} =="
helm dependency update environments/${env}

if [[ "${test}" == "install" ]]; then
elif [[ "${test}" == "upgrade" ]]; then
else
    echo "=== Testing ==="
    helm template test environments/${env}
fi
