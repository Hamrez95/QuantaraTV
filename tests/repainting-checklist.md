# Repainting checklist

- [x] Pivots are used only after `ta.pivothigh/low` confirmation.
- [x] Candidate activation defaults to `barstate.isconfirmed`.
- [x] Every `lookahead_on` MTF tuple uses `[1]` offsets.
- [x] Entry, Stop, targets, direction, and activation score freeze when the state activates.
- [x] Stops never widen after activation.
- [x] Alerts key off transitions/first hits, not persistent conditions alone.
- [x] Arrays and drawings are bounded.
- [ ] Paste, compile, refresh chart, and compare historical candidates.
- [ ] Observe one live candidate before and after bar close.
- [ ] Compare behavior across a higher-timeframe boundary.

Developing values: current-bar OHLC, session high/low, volume, ATR, event reaction, and context series can move until their current bar closes. They are contextual displays; confirmed candidate activation remains closed-bar by default.
