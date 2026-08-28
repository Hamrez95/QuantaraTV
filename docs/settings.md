# Settings

All 22 requested native groups exist. Presets are internal effective configurations because Pine inputs cannot rewrite other input widgets.

| Profile | Radar | Specialized context | Global | Economic | Estimated maximum |
|---|---:|---:|---:|---:|---:|
| Chart Focus | 0 | 0 | 0 | 0 | 5 |
| Balanced | 6 | Crypto 4 / Forex 6 | 3 | 0 | 20 |
| Radar Focus | 10 | Crypto 4 / Forex 6 | 0 | 0 | 21 |
| Macro Focus | 0 | Crypto 8 / Forex 6 | 8 | 2 (+2 stock) | 23 |

The estimates include five confirmed MTF requests. Actual contexts can be lower when a module is disabled. Debug exposes the current estimate; none of the profiles intentionally approaches the 40-context Basic-plan ceiling.

Display modes follow the Design Freeze: Full, Compact, Minimal, Radar Focus, Signal Focus, and Analysis Only. Analysis Only suppresses candidates and risk plans while retaining technical analysis.

## Recommended first-use settings

- `Simple View / حالت ساده`: on.
- `Display Mode`: Compact.
- `Session Background Master Switch`: off. Vertical background bands are session shading, not signals.
- `Previous Asia High / Low`: off. Enable it only when trading an Asia-range breakout method.
- `Enable Pivot Trendlines`: off initially. When enabled, 5m, 15m, 1h, 4h, 1D, and other chart timeframes have separate switches.
- `Show Active Entry / Stop / Targets`: on. Completed, expired, or invalidated plans are removed from the chart.
- `Radar`: use `Radar Focus` when you want screening; Simple + Compact intentionally hides it.

The interface and help text are English-only. Beginner-facing visibility controls include a native TradingView tooltip; hover the information icon beside an input to read it. Main panel fields also expose native cell tooltips when `Enable Hover Help` is on.

## Visual language

| Color / mark | Meaning |
|---|---|
| Teal `▲` | Bullish evidence, support, or profit target |
| Coral `▼` | Bearish evidence, resistance, or stop |
| Amber `◆` | Wait, neutral, or warning |
| Blue | Entry or informational context |
| Purple | Broader market/session context, never a directional signal by itself |
