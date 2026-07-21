#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

exec docker run --rm \
  -u "$(id -u):$(id -g)" \
  -v "${ROOT}:/workspace" \
  -w /workspace \
  -e npm_config_cache=/tmp/.npm \
  node:20-alpine \
  "$@"
