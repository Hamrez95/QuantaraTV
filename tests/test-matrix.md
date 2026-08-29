# Test matrix

Compiler/runtime cells remain unchecked until verified in TradingView. Do not infer success from CI.

| Market cases | 5m | 15m | 1h | 4h | 1D |
|---|---|---|---|---|---|
| BTCUSDT, ETHUSDT, liquid altcoin | ☐ | ☐ | ☐ | ☐ | ☐ |
| EURUSD, GBPUSD, USDJPY, non-USD cross | ☐ | ☐ | ☐ | ☐ | ☐ |
| Stock, index, commodity/future | ☐ | ☐ | ☐ | ☐ | ☐ |
| Missing volume / invalid context symbol | ☐ | ☐ | ☐ | ☐ | ☐ |

For each representative chart test all display modes, presets, and four resource profiles. Record compile errors, request/runtime errors, table overflow, symbol/timeframe changes, session DST boundary, manual event before/after windows, risk math, alert transition duplication, refresh parity, range/trend/high-volatility behavior, and missing-data degradation.

## v0.3.0 focused checks

- On a 1H chart, enable `Enable Higher-TF Trendlines / Channels` and `TF 4`; confirm a labeled `4H ASC CHANNEL` or `4H DESC CHANNEL` appears only when the last two confirmed 4H pivot pairs form a directional channel.
- Switch the chart to 4H or 1D; confirm lower source timeframes show `…` in the MTF strip and are not drawn as HTF channels.
- Enable pattern labels and verify Morning/Evening Star, Three Soldiers/Crows, Engulfing, rejection, and Inside-Bar expansion labels occur only at bar close and only with context alignment.
- Confirm the active plan again shows coral risk and teal reward zones, and that all plan drawings are removed after invalidation, TP3, or expiry.
- Check London/New York status around a DST boundary and verify exchange-traded charts distinguish `REGULAR OPEN` from `OUTSIDE REGULAR` on available bars.
# v0.4.0 focused checks

- [ ] On SOLUSDT 1H, enable `Decision Channel Timeframe = TF 4` with TF 4 = 240; verify the 4H channel edge remains based on confirmed pivots after a refresh.
- [ ] Verify `Market Aware` uses 08:00–17:00 New York for Forex and 09:30–16:00 New York for US cash charts; verify Custom remains unchanged.
- [ ] Create a setup whose structural stop exceeds Maximum Stop Distance; verify no candidate activates when `Reject Stop Wider Than Maximum` is enabled.
- [ ] Set JSON alerts on while no plan is active; inspect the message and verify unavailable numbers are `null`, never an em dash.
- [ ] After invalidation, verify the direction cannot re-enter until cooldown and fresh-trigger requirements are met.
- [ ] Verify a candle pattern away from a clustered level/sweep/retest does not become an aligned reversal trigger merely because London or New York is active.
- [ ] Verify a broken level changes role and remains dotted/faded for the short transition window.
- [ ] Verify Radar `NEW` is a direction-state change in its configured discovery scan, not a chart-engine trade approval.
# v0.5.0 focused checks

- [ ] Trigger TP1 and verify the panel states the configured manual close percentage and break-even action; it must not claim an exchange order was sent.
- [ ] Trigger TP2 and verify Runner/trail guidance; trigger TP3 and verify the plan closes and enters bounded history once.
- [ ] On a candle whose OHLC touches both Stop and a target, verify AMBIGUOUS BAR rather than a false sequence claim.
- [ ] Configure a matching High event with Hard Blackout; verify new candidates are blocked before/during the window and for the configured post-event closed bars.
- [ ] Trigger consecutive stops; verify the chart-local cooldown prevents another candidate. Change day and verify the daily plan counter resets.
- [ ] Verify Radar is score ordered and uses READY, WATCH, BLOCKED, NEW, LOW VOL, or DATA; verify its first loaded state does not falsely show NEW.

# v0.6.0 focused checks

- [ ] Confirm `READINESS` displays C/L/T/E/S accurately before a candidate and Safety switches to `!` during an event blackout or guardrail block.
- [ ] Confirm Quality A requires all five passes and score 80+, while Quality B requires all five passes and the configured minimum score.
- [ ] Close more plans than Maximum Archived Plans; verify only the configured number of faded five-line archived plans and labels remain.
- [ ] Select each Alert Workflow profile and verify runtime `alert()` notifications are limited to the selected workflow; alertcondition entries remain selectable separately.
