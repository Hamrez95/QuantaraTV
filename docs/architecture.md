# Architecture

The production artifact is one self-contained Pine v6 indicator. Its deterministic pipeline is:

1. Resolve preset, market type, display mode, and resource profile.
2. Compute chart-local sessions, confirmed pivots, clustered levels, trends, price-action triggers, volume, and volatility.
3. Retrieve five confirmed MTF states using offset expressions with `barmerge.lookahead_on`.
4. Activate exactly the relevant Crypto or Forex context, plus profile-controlled intermarket and economic context.
5. Score independent evidence families and apply explicit risk/data penalties.
6. Advance the persistent signal lifecycle and freeze its Entry/Stop/targets.
7. Render bounded chart objects/tables and deduplicated alerts.

## Bounded resources

- 240 lines, 160 labels, and 80 boxes declared; internal structure and level collections are capped.
- Radar scans only configured symbols and is limited to 6 in Balanced or 10 in Radar Focus.
- External requests use tuples and a configurable `calc_bars_count`.
- Tables update on the last bar; chart objects are reused, faded, or deleted.

The companion strategy is deliberately separate. Pine does not support arbitrary local source imports, so rule parity is maintained by checklist rather than a fake module system.
