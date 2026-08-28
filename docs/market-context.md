# Market context

## Crypto

Crypto context uses configurable TradingView datasets for BTC dominance, USDT dominance, TOTAL2/TOTAL3, and Bitcoin. It assesses direction/ROC, risk-on/off conflict, leadership/rotation, and 50-bar correlation to BTC. Context has a small capped score weight and may be unavailable on feeds without those symbols.

## Forex

Forex strength uses a limited basket: EURUSD, GBPUSD, USDJPY, AUDUSD, USDCAD, and USDCHF. Each currency receives the signed ROC of pairs in which it participates; USD is the mean signed basket movement. Base minus quote strength is capped before entering the score. This is a simplified relative-strength proxy, not centralized FX order flow.

## Global

Balanced uses VIX, DXY, and S&P 500. Macro Focus additionally requests US 10Y, US 2Y, and Gold. Relationships are transparent heuristics and deliberately modest because correlations vary by regime. Invalid symbols return an unavailable/reduced state rather than halting the script where TradingView supports invalid-symbol ignoring.
