#!/usr/bin/env bash
set -euo pipefail

dep_name="${1:-unknown}"
new_version="${2:-unknown}"

out="hook-fired-${dep_name}-${new_version}.txt"
echo "postUpgradeTask ran for ${dep_name} ${new_version} at $(date -u +%FT%TZ)" > "${out}"
echo "wrote ${out}"