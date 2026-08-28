# Risk management

The plan freezes Entry at candidate activation and derives structural Stop from the last confirmed swing, capped by a configurable ATR distance. TP1/TP2/TP3 default to 1.5R, 2.5R, and 3.5R. Estimated round-trip fees, spread, and slippage increase risk per unit before sizing.

`units = risk capital / (stop distance × contract multiplier + costs)`

Percentage risk uses account balance; fixed risk uses the supplied amount. Notional and estimated margin are displayed. Crypto leverage changes estimated margin only—it does not increase Edge or change planned loss. The leverage cap and liquidation-buffer setting are assumptions, not an exchange liquidation calculator.

Forex lots are approximate units divided by user-supplied standard-lot units. Pip/contract details differ by broker. Futures, CFDs, indices, and commodities require a correct contract/point multiplier; otherwise treat displayed units as provisional manual settings.
