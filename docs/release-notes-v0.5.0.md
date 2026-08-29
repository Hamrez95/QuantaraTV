# Quantara Vision v0.5.0

## Faster, safer plan management

- Plans now show manual TP1 and TP2 actions, optional Break-even protection after TP1, and Runner guidance after TP2.
- A plan ends as Closed TP3, Closed Stop, Expired, Expired Event, or Ambiguous Bar. An ambiguous OHLC candle does not claim a target sequence.
- Finished plans are retained in a bounded panel history. They are indicator-plan records, not exchange-confirmed fills.
- High-impact manual events can create a Hard Blackout and require a configurable number of closed bars after the event before new plans are allowed.
- Chart-local daily-plan and stop-streak guardrails help reduce impulsive re-entry. They cannot see exchange positions or trades on another chart.
- Radar is score ordered and uses practical states: READY, WATCH, BLOCKED, NEW, LOW VOL, and DATA.

## Known boundary

Pine cannot retrieve CNBC or any arbitrary live headline feed. See Companion News Bridge (companion-news-bridge.md) for the licensed external-companion design.
