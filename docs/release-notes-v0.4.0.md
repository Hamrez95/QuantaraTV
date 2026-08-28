# Quantara Vision v0.4.0

## Decision-quality upgrade

- Market-aware session templates now distinguish Forex liquidity (08:00–17:00 New York), US cash (09:30–16:00 New York), Crypto regional liquidity, and fully Custom windows. The inputs use IANA time zones.
- Clustered pivot levels, rather than only the newest pivot, drive proximity, candidate location, structural stop selection, and the closest opposing objective. A confirmed level break flips its displayed support/resistance role and remains dotted/faded briefly.
- A candidate now requires independent Context, Location, Trigger, and Economics gates. The panel's `NEXT` row states the missing gate when no setup is ready.
- Four named playbook families are surfaced: Trend Pullback, Breakout Retest, and Liquidity Sweep Reversal (range reversals appear through the same level/sweep gate). Candle patterns require level, sweep, or retest location; an active session is no longer enough.
- The selected confirmed higher-timeframe channel can act as a location gate without creating an extra request context. It can be switched off or mapped to any configured MTF slot.
- Structural stops are never tightened to satisfy a maximum-stop setting. Wide-stop plans are rejected by default. Re-entry cooldown and fresh-trigger guards reduce duplicate plans.
- JSON alerts emit `null` for unavailable numeric values, so they remain valid JSON.

## Validation scope

The companion strategy now uses the same core Context → Location → Trigger → structural-stop gate and rejects wide stops. It is still a representative validation harness, not full feature parity: it does not request the production MTF/context/Radar modules and cannot validate discretionary execution.

## Known limits

TradingView Pine cannot access arbitrary live headlines, a general holiday calendar, broker-specific fills, centralized Forex volume, or an external order-management system. Manual Event Slots and TradingView's native calendar/news views remain the honest workflow for event awareness.
