# Quantara Vision Trader-Workflow Audit v0.6.0

## What a disciplined trader needs in seconds

1. **Permission:** Is a new plan allowed, or is an event/risk guard blocking it?
2. **Readiness:** Which independent gates have passed: context, location, trigger, economics?
3. **Quality:** Is this a selective A-quality opportunity or simply an eligible B-quality candidate?
4. **Execution:** What is the next manual action, and when does the plan stop being valid?
5. **Review:** Where did the last indicator plan end without pretending to know exchange fills?

## Audit findings

| Finding | Trader impact | v0.6 action |
| --- | --- | --- |
| A single `NEXT ACTION` text is useful but does not show all gates at once. | Slow mental parsing under pressure. | Add compact PASS / WAIT / BLOCKED decision ladder. |
| A 0–100 score has no immediately visible quality tier. | A score can look precise while hiding quality differences. | Add transparent Quality A / B / Watch tier. |
| Finished plans disappear from the chart. | Trader loses visual review context and may mistake an old setup for a live one. | Preserve a bounded set of faded, labelled archived plan lines. |
| Runtime alerts can become noisy when all categories are enabled. | Alert fatigue and missed management actions. | Add an alert workflow profile that filters runtime calls. |
| The design freeze requires chart primacy. | Large panels/Radar can displace the price story. | Keep additions row-efficient and do not add request contexts. |

## Deferred by design

- Broker positions, real fills, partial fills, liquidation prices, and portfolio P&L remain unavailable to an indicator.
- Pine cannot ingest CNBC/Reuters/live RSS or an arbitrary economic calendar. The manual event safety layer remains the in-chart source of truth.
- No indicator can establish causal prediction or eliminate market risk. Ambiguous OHLC paths stay explicitly ambiguous.

## Acceptance tests

- Decision ladder says which gate is blocking before any plan is created.
- Quality is explained by score and independent gate/safety state, not a win-rate claim.
- At most the configured number of archived plans stays on the chart; each is faded and labelled as an indicator-model outcome.
- A single `alert()`-based workflow can be configured for candidate, management, risk, or all events.
- Static request inventory remains within the existing 40-context budget.
