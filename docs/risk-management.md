# Risk management

The plan freezes Entry at candidate activation and derives structural Stop from the last confirmed swing, capped by a configurable ATR distance. TP1/TP2/TP3 default to 1.5R, 2.5R, and 3.5R. Estimated round-trip fees, spread, and slippage increase risk per unit before sizing.

`units = risk capital / (stop distance × contract multiplier + costs)`

Percentage risk uses account balance; fixed risk uses the supplied amount. Notional and estimated margin are displayed. Crypto leverage changes estimated margin only—it does not increase Edge or change planned loss. The leverage cap and liquidation-buffer setting are assumptions, not an exchange liquidation calculator.

Forex lots are approximate units divided by user-supplied standard-lot units. Pip/contract details differ by broker. Futures, CFDs, indices, and commodities require a correct contract/point multiplier; otherwise treat displayed units as provisional manual settings.
# Structural-stop contract (v0.4.0)

`Maximum Stop Distance · ATR` is a safety filter, not a stop-compression tool. When a deterministic structural stop is farther away than the configured maximum, the default behavior is to reject the candidate. It never moves the stop closer to force a position size or make a setup look acceptable.

The tentative net R:R is calculated before a plan is activated, using configured fees, spread, slippage, the structural distance, and the nearest valid opposing clustered level when available. A fallback multiple-R objective is used only when no opposing level exists.

## Plan management (v0.5.0)

TP1/TP2 percentages, break-even protection, and runner guidance are manual decision aids. They do not place, modify, or close a broker/exchange order. A plan marked Closed is a Quantara Vision model-state outcome only.

An OHLC bar can touch both a Stop and a target without revealing which price occurred first. Quantara Vision marks this as Ambiguous Bar; it does not claim a profitable target fill. The daily-plan and stop-streak limits are chart-local safety guards, not portfolio-wide account controls.

## Review context (v0.6.0)

Faded archived plan lines preserve a bounded visual record of a finished Quantara model plan. They support discretionary review only. Their status is determined from chart OHLC data, not an exchange order or broker fill report.
