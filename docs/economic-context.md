# Economic and event context

Macro Focus can request two user-configurable Pine-native economic series (`IR`, `CPI`, `GDP`, or `UR`). Forex defaults auto-map base/quote currencies to regions where feasible. Stocks may additionally show quarterly revenue and net income when TradingView financial data exists. The panel labels macro values **MACRO · SLOW** and does not score stock fundamentals. They are never treated as intraday directional triggers. Availability and update cadence are controlled by TradingView's datasets.

Pine cannot fetch arbitrary headlines or a normal external calendar. Quantara Vision therefore provides three honest manual event slots. Each slot stores name, affected market, timestamp, and impact. The engine can inform, reduce score, block a candidate, or show high risk. After the timestamp it reports the observed ATR-normalized chart move; this is observation, not causal proof.

For live news and official event details, use TradingView News Flow and Economic Calendar alongside the indicator.
