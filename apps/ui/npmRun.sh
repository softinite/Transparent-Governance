#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <npm-script> [-- <args>]" >&2
  exit 1
fi

SCRIPT="$1"
shift

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "${ROOT}/infrastructure/docker/node.sh" npm run "${SCRIPT}" "$@"
