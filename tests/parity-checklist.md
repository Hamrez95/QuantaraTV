# Indicator / strategy parity

| Rule | Indicator | Strategy | Status |
|---|---|---|---|
| Confirmed pivot strength | Effective preset/custom | Input | Matched concept |
| Structure HH/HL and LH/LL | Yes | Yes | Matched |
| BOS ATR buffer | 0.12 default | 0.12 | Matched |
| S/R proximity | 0.65 ATR | 0.65 ATR | Matched |
| EMA trend | 20/50 default | 20/50 default | Matched |
| Contextual engulf trigger | Yes | Yes | Matched core subset |
| Relative volume | 20 default | 20 default | Matched |
| Minimum score and 7-point directional gap | Yes | Yes | Matched |
| Closed-bar activation | Default | Required | Matched |
| Structural stop with ATR cap | Yes | Yes | Matched |
| Position risk | Fixed/percent | Percent | Strategy subset |
| MTF/context/event/radar | Yes | Excluded | Intentional; isolate core rules |

Any future core-rule change must update both Pine files and this table in the same PR.
# v0.4.0 parity status

| Production rule | Validation strategy | Status |
| --- | --- | --- |
| Confirmed pivots and HH/HL or LH/LL context | Same pivot-confirmed core | Covered |
| Level location | Latest confirmed pivot proxy only | Partial — production clustered role-reversal levels are richer |
| Candle trigger | Engulfing + structure/level core | Partial — production includes retest, sweep, session, and channel triggers |
| Structural stop | Same no-tightening rule and maximum-stop rejection | Covered |
| R:R and costs | Strategy Properties plus representative target | Partial — production uses configured spread/fee/slippage and opposing clustered level |
| Confirmed MTF / HTF channel | Not requested by strategy | Not covered by design; validation keeps a stable core only |
| Crypto, Forex, macro, events, Radar | Not scored by strategy | Not covered; these are context/discovery modules, not a backtest claim |
# v0.5.0 lifecycle note

The strategy validation script remains a core entry/stop/target harness. It does not validate partial exchange fills, true intra-bar execution order, broker amendments, the manual event calendar, or companion-app notifications. The production indicator explicitly labels those limits.
