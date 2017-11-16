#!/bin/bash
set -euo pipefail

for i in {1..32}; do
  docker network create net$i
done

