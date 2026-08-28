# Market context

## Crypto

Crypto context uses configurable TradingView datasets for BTC dominance, USDT dominance, TOTAL2/TOTAL3, and Bitcoin. It assesses direction/ROC, risk-on/off conflict, leadership/rotation, and 50-bar correlation to BTC. Context has a small capped score weight and may be unavailable on feeds without those symbols.

## Forex

Forex strength uses a limited basket: EURUSD, GBPUSD, USDJPY, AUDUSD, USDCAD, and USDCHF. Each currency receives the signed ROC of pairs in which it participates; USD is the mean signed basket movement. Base minus quote strength is capped before entering the score. This is a simplified relative-strength proxy, not centralized FX order flow.

## Global

Balanced uses VIX, DXY, and S&P 500. Macro Focus additionally requests US 10Y, US 2Y, and Gold. Relationships are transparent heuristics and deliberately modest because correlations vary by regime. Invalid symbols return an unavailable/reduced state rather than halting the script where TradingView supports invalid-symbol ignoring.

## Sessions and closures

The regional session module uses configurable IANA time zones for Asia, London/Europe, and New York. This handles daylight-saving transitions where the relevant zone observes them. Exchange-defined regular-session status is available for the current chart bar through Pine. A general, forward-looking exchange-holiday calendar is not available to Pine scripts; no bar exists while the exchange is closed. Manual Event Slots are the supported way to warn about a known closure or special event.

## Higher-timeframe channels

Each of the five MTF requests returns confirmed EMA/RSI state and the last two confirmed pivot highs and lows in one user-defined data object. Selected higher-timeframe channels therefore add no request contexts or tuple-element pressure. The solid boundary connects the validated rising lows or falling highs. The dashed opposite boundary is a deterministic parallel approximation through the latest confirmed opposing pivot. A source timeframe lower than the chart is marked unavailable and is not drawn.
