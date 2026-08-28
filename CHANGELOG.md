# Changelog

## 0.2.1 — 2026-08-28

- Restored an English-only interface and removed Persian text from the chart panel and Settings.
- Added native hover tooltips to the panel header and its main fields, plus English Settings tooltips.
- Added configurable panel text size and clarified the MTF row.
- Disabled filled risk/reward zones by default while retaining active Entry, Stop, and target lines.
- Reduced repeated liquidity-sweep labels with a deterministic cooldown.
- Added independent visibility controls for Fast EMA and Slow EMA.

## 0.2.0 — 2026-08-28

- Added a default beginner-friendly Simple View with an in-panel color legend and Persian explanations.
- Hid Radar and advanced context rows in Simple + Compact while keeping them available in Full/Radar Focus.
- Disabled session background shading and previous Asia levels by default; added per-session visibility switches and Persian tooltips.
- Corrected trendlines to draw only valid higher-low/lower-high pivot pairs, limited their projection, and added independent chart-timeframe switches for 5m, 15m, 1h, 4h, 1D, and other timeframes.
- Removed completed/invalidated plan drawings instead of leaving historical position graphics on the chart.
- Removed EMA, VWAP, and previous-session values from the indicator status line to reduce unexplained header clutter.

## 0.1.0 — 2026-08-28

- First usable Quantara Vision implementation.
- Added 22 native settings groups and effective presets.
- Added confirmed structure, clustered levels, pivot trendlines, sessions, contextual triggers, volume/volatility, five confirmed MTF states, crypto/Forex/global/macro contexts, three manual event slots, risk planning, stateful alerts, and bounded radar.
- Added a Strategy Tester companion, test matrix, repaint/parity checklists, CI, and Design Freeze mapping.
