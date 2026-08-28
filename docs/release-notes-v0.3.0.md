# Quantara Vision v0.3.0

This release restores the original filled active position-plan view and adds selectable, non-repainting higher-timeframe trendlines/channels. The default TF 4 source is 4H, so a trader can display a confirmed 4H ascending or descending channel while inspecting reactions on a 1H chart.

The five existing MTF request contexts now return confirmed EMA/RSI and pivot data in Pine user-defined objects. No request context was added, and the implementation avoids Pine's 127 combined tuple-element ceiling.

Price Action now recognizes deterministic approximations of Engulfing, Hammer/Shooting Star rejection, Morning/Evening Star, Three Soldiers/Crows, and Inside-Bar expansion. These patterns affect the 15-point Price Action family only when aligned with structure, a confirmed level, trend, session, sweep, or retest context. Optional chart labels remain off by default.

Session status distinguishes Asia, London/Europe, New York, overlap, low-liquidity periods, and exchange regular-session state where Pine exposes it. IANA zones handle daylight-saving transitions. Pine cannot retrieve a universal future exchange-holiday calendar; known closures remain a Manual Event Slot responsibility.

Static validation passes. TradingView Pine Editor compilation and chart refresh parity remain the required release verification step.
