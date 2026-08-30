# Settings

All 22 requested native groups exist. Presets are internal effective configurations because Pine inputs cannot rewrite other input widgets.

| Profile | Radar | Specialized context | Global | Economic | Estimated maximum |
|---|---:|---:|---:|---:|---:|
| Chart Focus | 0 | 0 | 0 | 0 | 5 |
| Balanced | 6 | Crypto 4 / Forex 6 | 3 | 0 | 20 |
| Radar Focus | 10 | Crypto 4 / Forex 6 | 0 | 0 | 21 |
| Macro Focus | 0 | Crypto 8 / Forex 6 | 8 | 2 (+2 stock) | 23 |

The estimates include five confirmed MTF requests. Actual contexts can be lower when a module is disabled. Debug exposes the current estimate; none of the profiles intentionally approaches the 40-context Basic-plan ceiling.

Display modes follow the Design Freeze: Full, Compact, Minimal, Radar Focus, Signal Focus, and Analysis Only. Analysis Only suppresses candidates and risk plans while retaining technical analysis.

## Recommended first-use settings

- `Simple View`: on.
- `Display Mode`: Compact.
- `Session Background Master Switch`: off. Vertical background bands are session shading, not signals.
- `Previous Asia High / Low`: off. Enable it only when trading an Asia-range breakout method.
- `Enable Pivot Trendlines`: controls trendlines calculated on the chart timeframe. Its 5m, 15m, 1h, 4h, 1D, and Other TF switches decide which chart timeframes display them.
- In **Market Structure**, `Chart Label Size` controls only the chart annotations such as `HH`, `HL`, `LH`, `LL`, `BOS`, and `CHoCH`. It defaults to **Normal** for readability; choose **Large** on a high-resolution display or when you sit farther from the chart. It does not change the calculation or signal score.
- In **Support / Resistance**, `Level Labels = Compact` writes `S 2×` or `R 3×` beside the active line: `S` means support, `R` means resistance, and `×` is the number of clustered confirmed-pivot touches. `Detailed` also identifies Fresh, Tested, or recently Broken. For an intraday chart, start with `Maximum Visible Levels = 8` and `Level Lookback = 600`; reduce them again if the chart becomes noisy.
- `Enable Higher-TF Trendlines / Channels`: controls overlays sourced from the five MTF inputs. To inspect a confirmed 4H channel on a 1H chart, leave `TF 4 = 240`, enable the master switch and `TF 4`, then optionally keep `Draw Parallel Higher-TF Channel` on.
- `Show Active Entry / Stop / Targets` and `Fill Risk / Reward Zones`: on. Completed, expired, or invalidated plans are removed from the chart.
- `Show Confirmed Pattern Labels`: off for a clean chart. Pattern detection and scoring remain active while labels are hidden.
- `Radar`: use `Radar Focus` when you want screening; Simple + Compact intentionally hides it.

The interface and help text are English-only. Beginner-facing visibility controls include a native TradingView tooltip; hover the information icon beside an input to read it. Main panel fields also expose native cell tooltips when `Enable Hover Help` is on.

## Visual language

| Color / mark | Meaning |
|---|---|
| Teal `▲` | Bullish evidence, support, or profit target |
| Coral `▼` | Bearish evidence, resistance, or stop |
| Amber `◆` | Wait, neutral, or warning |
| Blue | Entry or informational context |
| Purple | Broader market/session context, never a directional signal by itself |

## Sessions and market status

Asia, London/Europe, New York, and their overlap are custom analysis windows. London and New York use IANA zones, so TradingView handles daylight-saving changes. For stocks, indices, and futures, `REGULAR OPEN`/`OUTSIDE REGULAR` follows Pine's exchange-session state for the current bar. Pine does not expose a universal future exchange-holiday calendar; holidays normally produce no chart bars. Known closures can be entered in Manual Event Slots.
# v0.4.0 quick settings

For an SOL chart:

- Use **Market = Auto**, **Preset = Balanced**, **Trading Style = Intraday**, and **Resource Profile = Balanced**.
- In **Sessions**, keep **Session Template = Market Aware**. It uses regional liquidity windows for a 24/7 crypto chart; it does not claim that crypto has official exchange open/close hours.
- In **Trendlines**, set **Decision Channel Timeframe = TF 4** while TF 4 is `240` (4H). Turn on `Enable Higher-TF Trendlines / Channels` and `TF 4` only when you want the visual overlay. The decision gate itself uses the confirmed 4H pivots and can stay on without drawing all lines.
- In **Risk Management**, leave `Reject Stop Wider Than Maximum` on. A rejected setup means the structural stop is too far away for your rule, not that the indicator moved it.
- Read the panel in order: **REGIME → NEXT → MTF → Entry/Stop/Targets**. `NEXT` tells you whether the missing item is context, location, or trigger.
# v0.5.0 trade-execution awareness

- In **News / Event Risk**, enter upcoming scheduled releases manually. Choose **Hard Blackout** for CPI, NFP, FOMC, rate decisions, GDP, and similar releases; set the post-event closed-bar hold before permitting a new plan.
- In **Risk Management**, configure TP1/TP2 suggested close percentages and the TP1 protection rule. These generate chart guidance and alerts only; they do not send an order to an exchange.
- In **Signal Scoring**, Maximum New Plans Per Day and Maximum Consecutive Stops are chart-local safety rails. They cannot see positions opened on a different chart or exchange account.
- In the compact panel, read **state → NEXT ACTION → location → MTF**. A Closed state refers to this indicator plan, not a broker-confirmed fill.

# v0.6.0 fast decision workflow

- Read **READINESS** before the score: `C` Context, `L` Location, `T` Trigger, `E` Economics, and `S` Safety. `✓` passes; `·` is still missing; `!` is a safety block.
- **QUALITY A** requires all five gates plus score 80 or higher. **QUALITY B** requires all five gates and your configured minimum score. These are evidence labels, never performance guarantees.
- In **Colors + Visibility**, leave `Show Faded Archived Plans` on if you want a brief visual record after a model plan ends. They are deliberately faded and are not exchange fills.
- In **Alerts**, start with `Plan Management` if you already entered manually. Use `Candidate Only` when scanning, and `Risk Only` around high-impact news. Create one TradingView script alert for `alert()` calls; changing inputs later requires recreating the alert in TradingView.
