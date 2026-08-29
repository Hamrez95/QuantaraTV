# Signals and scoring

The score is evidence-based rather than a count of correlated indicators.

| Family | Maximum |
|---|---:|
| Market structure | 20 |
| Location / S-R | 15 |
| Trend | 10 |
| Trigger / price action | 15 |
| Volume / participation | 10 |
| Confirmed MTF alignment | 15 |
| Session / timing | 5 |
| Market / macro context | 5 |
| Trade economics | 5 |

The Price Action family recognizes deterministic OHLC approximations of bullish/bearish engulfing, Hammer/Shooting Star rejection, Morning/Evening Star, Three Soldiers/Crows, and Inside-Bar expansion. A candle pattern earns directional trigger credit only when it aligns with at least one context family such as structure, a confirmed level, trend, session, sweep, or retest. This follows the core rule that candles must be read in market context rather than as standalone predictions.

Penalties are explicit: low volume −7, MTF conflict −8, excessive volatility −8, contextual Doji/indecision −4, and configurable event penalty. `Block Candidate` prevents activation without inventing direction. The greater directional score must exceed the other by seven points.

Lifecycle: None → Early Watch → Candidate → Active Plan → TP1 Hit / Protected → TP2 Hit / Runner → Closed TP3, Closed Stop, Expired, or Expired Event. Entry and targets freeze on activation. The Stop is never moved farther away; it may move to break-even only when the configured TP1 management rule requests it. If one OHLC bar touches both Stop and a target, the result is shown as Ambiguous Bar rather than claiming a fill sequence. Alerts fire on transitions/events instead of every bar.

Quality labels describe evidence strength only. They are not win-rate claims.
# v0.4.0 decision gates

The production indicator does not treat a high score as a trade by itself. A candidate must pass four independent gates:

1. **Context**: confirmed structure plus MTF agreement.
2. **Location**: a clustered support/resistance level or the selected confirmed higher-timeframe channel edge.
3. **Trigger**: a retest, aligned candle pattern, session-range break, trendline break, or channel retest.
4. **Economics**: a structural stop is within the configured maximum (if enabled) and the net R:R to the nearest opposing level or fallback objective meets the minimum.

The `NEXT` row shows the first missing gate. This is deliberately more useful than inflating a score with correlated EMA conditions.
