#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
git pull -q --rebase origin main || true
echo "- $(TZ=Asia/Kolkata date '+%Y-%m-%d %H:%M:%S %Z')" >> log.md
git add log.md
git commit -q -m "Update log: $(TZ=Asia/Kolkata date '+%Y-%m-%d %H:%M')"
git push -q origin main
