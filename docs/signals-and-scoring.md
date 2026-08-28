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

Penalties are explicit: low volume −7, MTF conflict −8, excessive volatility −8, and configurable event penalty. `Block Candidate` prevents activation without inventing direction. The greater directional score must exceed the other by seven points.

Lifecycle: None → Early Watch → Candidate → Active Plan → Invalidated / Target Reached / Expired. Entry, Stop, and targets freeze on activation. The Stop is never moved farther away. Alerts fire on transitions/events instead of every bar.

Quality labels describe evidence strength only. They are not win-rate claims.
