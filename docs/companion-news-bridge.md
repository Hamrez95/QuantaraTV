# Quantara Companion News and Event Bridge

## Boundary

Quantara Vision is a Pine indicator. Pine cannot call CNBC, Reuters, RSS feeds, normal HTTP APIs, or inject an external live-news stream into its chart panel. It must never present fabricated headlines or imply that it reads live news.

## Pine-native layer

The indicator provides three manual scheduled-event slots, event-market matching, a hard blackout, a post-event closed-bar hold, observed price reaction, and alerts. This is the reliable in-chart safety layer for planned releases such as CPI, NFP, GDP, and central-bank decisions.

## Companion-app layer

The separate Quantara desktop/mobile companion may consume only properly licensed data sources. It should normalize each item into:

| Field | Example |
| --- | --- |
| event type | Scheduled data / central-bank decision / breaking risk |
| affected markets | USD, EUR, BTC, Gold, global risk |
| severity | Informational / caution / hard blackout |
| start and end | UTC timestamps |
| source URL | Licensed source or official release page |
| confidence | Source/relevance confidence, never direction certainty |

The companion can send desktop/mobile notifications such as “CPI in 20m — no new USD-risk trades”. It cannot silently alter or inject data into the Pine script. The trader remains responsible for checking the original source and managing open exchange positions.

## Suggested event policy

- **Hard blackout:** FOMC/rate decision, CPI, NFP, PCE, GDP, and matching central-bank decisions.
- **Caution:** speeches, lower-tier data, large scheduled earnings, or verified breaking news.
- **After release:** wait for the configured closed bars; use observed reaction only as context, not proof of causality.
