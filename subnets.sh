#!/bin/bash
set -euo pipefail

for i in {1..32}; do
  docker network create --subnet 10.10.$i.0/24 net$i
done

