# Pine and product limitations

- Basic scripts permit up to 40 unique `request.*()` contexts; Quantara profiles remain materially below this ceiling.
- One indicator instance consumes one chart indicator slot. Available alerts/history still depend on the user's TradingView plan.
- Tables have fixed anchor positions, not draggable/clickable controls. Radar headers are not clickable and sorting is calculation-driven only.
- Pixel dimensions, custom fonts, blur, gradients, and animation from app UI cannot be guaranteed in Pine.
- Radar scans configured symbols only; it is not a whole-market screener.
- Invalid-symbol behavior depends on the TradingView dataset and account entitlements.
- Pivot labels appear only after right-side confirmation bars. This delay is the cost of avoiding future leakage.
- Forex volume is decentralized feed/tick volume, never centralized market volume.
- Arbitrary news/APIs, order execution, broker positions, spreads, and liquidation prices are unavailable without a separate companion application.
- Economic values are slow context, not event timestamps or intraday triggers.
- Pine inputs cannot rewrite each other; presets calculate effective values internally.
