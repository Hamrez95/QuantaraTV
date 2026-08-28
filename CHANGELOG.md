# Changelog

## v0.4.0

- Hardened session semantics, structural-stop safety, pre-candidate trade economics, re-entry guards, and JSON alerts.
- Added actionable clustered level role reversal and selected confirmed HTF-channel decision gating.
- Replaced broad EMA-heavy aggregation with explicit decision-gate playbooks and a `NEXT` panel row.
- Updated the validation strategy and static checks for the structural-stop contract.

## 0.3.0 — 2026-08-28

- Restored filled Entry/Stop/TP position-plan zones as the default active-plan view.
- Added selectable, confirmed higher-timeframe pivot trendlines and parallel channels without adding request contexts; TF 4 (default 4H) is ready for inspection on lower-timeframe charts.
- Added higher-timeframe channel labels and safe suppression when a selected source timeframe is below the chart timeframe.
- Added exchange/session status with IANA/DST-aware London and New York windows and an honest exchange-holiday limitation.
- Added context-aware Morning/Evening Star, Three Soldiers/Crows, Engulfing, Hammer/Shooting Star, and Inside-Bar expansion recognition.
- Integrated candle analysis into the 15-point Price Action family, added indecision penalties, optional bounded pattern labels, and captured setup names in active plans and alerts.

## 0.2.1 — 2026-08-28

- Restored an English-only interface and removed Persian text from the chart panel and Settings.
- Added native hover tooltips to the panel header and its main fields, plus English Settings tooltips.
- Added configurable panel text size and clarified the MTF row.
- Disabled filled risk/reward zones by default while retaining active Entry, Stop, and target lines (restored by default in 0.3.0 after user testing).
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
