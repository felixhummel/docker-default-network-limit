#!/bin/bash
set -euo pipefail

for i in {1..32}; do
  docker network rm net$i
done

