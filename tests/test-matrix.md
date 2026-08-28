# Test matrix

Compiler/runtime cells remain unchecked until verified in TradingView. Do not infer success from CI.

| Market cases | 5m | 15m | 1h | 4h | 1D |
|---|---|---|---|---|---|
| BTCUSDT, ETHUSDT, liquid altcoin | ☐ | ☐ | ☐ | ☐ | ☐ |
| EURUSD, GBPUSD, USDJPY, non-USD cross | ☐ | ☐ | ☐ | ☐ | ☐ |
| Stock, index, commodity/future | ☐ | ☐ | ☐ | ☐ | ☐ |
| Missing volume / invalid context symbol | ☐ | ☐ | ☐ | ☐ | ☐ |

For each representative chart test all display modes, presets, and four resource profiles. Record compile errors, request/runtime errors, table overflow, symbol/timeframe changes, session DST boundary, manual event before/after windows, risk math, alert transition duplication, refresh parity, range/trend/high-volatility behavior, and missing-data degradation.
