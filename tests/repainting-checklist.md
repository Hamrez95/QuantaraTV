# Repainting checklist

- [x] Pivots are used only after `ta.pivothigh/low` confirmation.
- [x] Candidate activation defaults to `barstate.isconfirmed`.
- [x] Every field in the `lookahead_on` MTF data object uses `[1]` offsets.
- [x] Higher-timeframe channels use only confirmed source-timeframe pivots and never lower-timeframe `request.security()` results.
- [x] Entry, Stop, targets, direction, and activation score freeze when the state activates.
- [x] Stops never widen after activation.
- [x] Alerts key off transitions/first hits, not persistent conditions alone.
- [x] Arrays and drawings are bounded.
- [ ] Paste, compile, refresh chart, and compare historical candidates.
- [ ] Observe one live candidate before and after bar close.
- [ ] Compare behavior across a higher-timeframe boundary.
- [ ] Enable TF 4 on a 1H chart, refresh, and confirm the 4H channel endpoints remain unchanged until a new 4H pivot confirms.

Developing values: current-bar OHLC, session high/low, volume, ATR, event reaction, and context series can move until their current bar closes. They are contextual displays; confirmed candidate activation remains closed-bar by default.
# v0.4.0 channel and session checks

- [ ] Change from 1H to 15m and back while a 4H channel is selected. The confirmed source pivots and channel decision state must not rewrite historical closed higher-timeframe values.
- [ ] Confirm that a current bar can develop visually, but candidates require the configured bar-close confirmation by default.
- [ ] Confirm session states use IANA zones and that a daylight-saving change shifts the chart-time display while preserving the named local window.
