# Quantara Vision

Quantara Vision is a single-file Pine Script v6 decision-support indicator for crypto, Forex, stocks, indices, commodities, futures, and generic OHLCV charts. It combines confirmed market structure, deterministic support/resistance, trend, contextual price action, volume/volatility, confirmed MTF alignment, sessions, market context, manual event risk, explainable scoring, a fixed risk plan, alerts, and a configured-symbol radar.

It does not execute orders, fetch arbitrary news, promise profitability, or depend on a broker/backend/API key. Forex volume is explicitly treated as feed/tick-volume proxy data.

## Install

Copy [`src/quantara_vision.pine`](src/quantara_vision.pine) into TradingView Pine Editor, save, choose **Add to chart**, and start with `Balanced / Intraday / Compact / Balanced`. Version 0.2.0 enables Simple View by default, keeps session shading and pivot trendlines off initially, and shows only active trade-plan drawings.

The validation companion is [`src/quantara_validation_strategy.pine`](src/quantara_validation_strategy.pine). It intentionally duplicates the documented core rules because Pine cannot import arbitrary local files.

## Status

- Version: `0.2.0`
- Design baseline: Quantara Vision Design Freeze v1.0
- Static checks: automated in GitHub Actions
- TradingView compiler: must be verified in the authenticated Pine Editor before calling the release compiler-verified

See [installation](docs/installation.md), [settings](docs/settings.md), [scoring](docs/signals-and-scoring.md), [limitations](docs/pine-limitations.md), and [validation](docs/validation.md).
