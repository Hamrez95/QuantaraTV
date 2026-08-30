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
  "$root/docs/companion-news-bridge.md" "$root/docs/release-notes-v0.5.0.md"
  "$root/docs/trader-workflow-audit-v0.6.0.md" "$root/docs/release-notes-v0.6.0.md"
)

for file in "${required[@]}"; do
  [[ -s "$file" ]] || { echo "Missing or empty: $file"; exit 1; }
done

head -n 1 "$indicator" | grep -qxF '//@version=6'
head -n 1 "$strategy" | grep -qxF '//@version=6'
grep -q 'indicator("Quantara Vision' "$indicator"
grep -q 'strategy("Quantara Vision' "$strategy"

if grep -REn --exclude='static_checks.sh' '(password|api[_-]?key|secret|private[_-]?key)[[:space:]]*[:=][[:space:]]*["'"'"'][^"'"'"']+' "$root"; then
  echo "Possible credential committed"
  exit 1
fi

if grep -En 'lookahead[[:space:]]*=[[:space:]]*barmerge\.lookahead_on' "$indicator" | while IFS=: read -r line _; do
  sed -n "${line}p" "$indicator" | grep -Eq '\[1\]|f_mtf_data\('
done; then :; else
  echo "Unsafe HTF lookahead_on call: every occurrence must include an offset"
  exit 1
fi

grep -A4 'f_mtf_data(int strength)' "$indicator" | grep -q '\[1\]'

[[ "$(grep -Eo 'request\.(security|economic|financial|earnings)\(' "$indicator" | wc -l)" -le 40 ]]
[[ "$(grep -Eo 'max_(lines|labels|boxes)_count[[:space:]]*=[[:space:]]*[0-9]+' "$indicator" | wc -l)" -eq 3 ]]
! grep -q 'cappedDistance' "$indicator"
grep -q 'Reject Stop Wider Than Maximum' "$indicator"
grep -q 'f_json_num(float value)' "$indicator"
grep -q 'Session Template' "$indicator"
grep -q 'Decision Channel Timeframe' "$indicator"
grep -q 'Hard Blackout' "$indicator"
grep -q 'TP1 Suggested Close' "$indicator"
grep -q 'Ambiguous Bar' "$indicator"
grep -q 'QUALITY A' "$indicator"
grep -q 'Show Faded Archived Plans' "$indicator"
grep -q 'Alert Workflow' "$indicator"
grep -q 'Chart Label Size' "$indicator"
grep -q 'companion-news-bridge.md' "$root/CHANGELOG.md"
grep -q 'trader-workflow-audit-v0.6.0.md' "$root/CHANGELOG.md"
if grep -REn 'TODO|FIXME|guaranteed|risk-free|institutional signal|90% win rate' "$root/src"; then
  echo "Placeholder or prohibited claim found in release source"
  exit 1
fi

echo "Quantara Vision static checks passed"
