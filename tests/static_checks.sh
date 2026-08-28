#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
indicator="$root/src/quantara_vision.pine"
strategy="$root/src/quantara_validation_strategy.pine"

required=(
  "$indicator" "$strategy" "$root/README.md" "$root/CHANGELOG.md"
  "$root/docs/architecture.md" "$root/docs/installation.md" "$root/docs/settings.md"
  "$root/docs/signals-and-scoring.md" "$root/docs/market-context.md"
  "$root/docs/economic-context.md" "$root/docs/risk-management.md"
  "$root/docs/validation.md" "$root/docs/pine-limitations.md"
  "$root/docs/design-implementation-map.md" "$root/tests/test-matrix.md"
  "$root/tests/repainting-checklist.md" "$root/tests/parity-checklist.md"
)

for file in "${required[@]}"; do
  [[ -s "$file" ]] || { echo "Missing or empty: $file"; exit 1; }
done

head -n 1 "$indicator" | grep -qxF '//@version=6'
head -n 1 "$strategy" | grep -qxF '//@version=6'
grep -q 'indicator("Quantara Vision' "$indicator"
grep -q 'strategy("Quantara Vision' "$strategy"

if rg -n '(password|api[_-]?key|secret|private[_-]?key)\s*[:=]\s*["'"'"'][^"'"'"']+' "$root" --glob '!tests/static_checks.sh'; then
  echo "Possible credential committed"
  exit 1
fi

if rg -n 'lookahead\s*=\s*barmerge\.lookahead_on' "$indicator" | while IFS=: read -r line _; do
  sed -n "${line}p" "$indicator" | grep -q '\[1\]'
done; then :; else
  echo "Unsafe HTF lookahead_on call: every occurrence must include an offset"
  exit 1
fi

[[ "$(rg -o 'request\.(security|economic|financial|earnings)\(' "$indicator" | wc -l)" -le 40 ]]
[[ "$(rg -o 'max_(lines|labels|boxes)_count\s*=\s*[0-9]+' "$indicator" | wc -l)" -eq 3 ]]
! rg -n 'TODO|FIXME|guaranteed|risk-free|institutional signal|90% win rate' "$root/src" 

echo "Quantara Vision static checks passed"
