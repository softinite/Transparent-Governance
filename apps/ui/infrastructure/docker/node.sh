#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

DOCKER_ARGS=(--rm)

if [[ -n "${NODE_DOCKER_PORT:-}" ]]; then
  DOCKER_ARGS+=(-p "${NODE_DOCKER_PORT}:${NODE_DOCKER_PORT}")
  DOCKER_ARGS+=(-e "VITE_PORT=${NODE_DOCKER_PORT}")
fi

exec docker run "${DOCKER_ARGS[@]}" \
  -u "$(id -u):$(id -g)" \
  -v "${ROOT}:/workspace" \
  -w /workspace \
  -e npm_config_cache=/tmp/.npm \
  node:20-alpine \
  "$@"
