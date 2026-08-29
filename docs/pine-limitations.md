# Pine and product limitations

- Basic scripts permit up to 40 unique `request.*()` contexts; Quantara profiles remain materially below this ceiling.
- One indicator instance consumes one chart indicator slot. Available alerts/history still depend on the user's TradingView plan.
- Tables have fixed anchor positions, not draggable/clickable controls. Radar headers are not clickable and sorting is calculation-driven only.
- Pixel dimensions, custom fonts, blur, gradients, and animation from app UI cannot be guaranteed in Pine.
- Radar scans configured symbols only; it is not a whole-market screener.
- Invalid-symbol behavior depends on the TradingView dataset and account entitlements.
- Pivot labels appear only after right-side confirmation bars. This delay is the cost of avoiding future leakage.
- Higher-timeframe trendlines/channels also wait for confirmed source-timeframe pivots and therefore appear later than discretionary hand-drawn lines.
- Pine has no universal future exchange-holiday calendar. Exchange closures normally appear as missing bars; known closures must be entered manually as Event Slots.
- Forex volume is decentralized feed/tick volume, never centralized market volume.
- Arbitrary news/APIs, order execution, broker positions, spreads, and liquidation prices are unavailable without a separate companion application.
- Runtime `alert()` calls support dynamic workflow messages, but no script can create the running TradingView alert for the user. `alertcondition()` items remain separately selectable and each active condition uses the user's plan allowance.
- Archived plans are chart-data model outcomes only; Pine cannot verify the order or price of broker/exchange fills inside a historical OHLC bar.
- Economic values are slow context, not event timestamps or intraday triggers.
- Pine inputs cannot rewrite each other; presets calculate effective values internally.
