# Quantara Vision

Quantara Vision is a single-file Pine Script v6 decision-support indicator for crypto, Forex, stocks, indices, commodities, futures, and generic OHLCV charts. It combines confirmed market structure, deterministic support/resistance, trend, contextual price action, volume/volatility, confirmed MTF alignment, sessions, market context, manual event risk, explainable scoring, a fixed risk plan, alerts, and a configured-symbol radar.

It does not execute orders, fetch arbitrary news, promise profitability, or depend on a broker/backend/API key. Forex volume is explicitly treated as feed/tick-volume proxy data.

## Install

Copy [`src/quantara_vision.pine`](src/quantara_vision.pine) into TradingView Pine Editor, save, choose **Add to chart**, and start with `Balanced / Intraday / Compact / Balanced`. Version 0.6.1 keeps the five-gate readiness ladder and adds a readable, configurable structure-label size for `HH`, `HL`, `LH`, `LL`, `BOS`, and `CHoCH`.

The validation companion is [`src/quantara_validation_strategy.pine`](src/quantara_validation_strategy.pine). It intentionally duplicates the documented core rules because Pine cannot import arbitrary local files.

## Status

- Version: `0.6.1`
- Design baseline: Quantara Vision Design Freeze v1.0
- Static checks: automated in GitHub Actions
- TradingView compiler: must be verified in the authenticated Pine Editor before calling the release compiler-verified

See [installation](docs/installation.md), [settings](docs/settings.md), [scoring](docs/signals-and-scoring.md), [trader workflow audit](docs/trader-workflow-audit-v0.6.0.md), [limitations](docs/pine-limitations.md), and [validation](docs/validation.md).
