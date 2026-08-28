# Design implementation map

| Design Freeze element | Implementation | Difference / reason |
|---|---|---|
| Token palette | Exact HEX tokens | TradingView controls chart canvas itself |
| Signal panel | Four-column anchored table | Pine cannot guarantee 300×360 pixels |
| HH/HL/LH/LL, BOS, CHoCH | Confirmed pivot labels | Labels appear after pivot confirmation |
| Major/tested/broken levels | Solid/dashed/dotted bounded lines | Strength comes from deterministic ATR clustering/touches |
| Entry/Stop/TP boxes | Frozen lines plus 7% risk/reward fills | Box width extends with active plan, not fixed pixels |
| Crypto panel | Dominance/market-cap/Bitcoin narrative | Depends on symbol feed availability |
| Forex overview | Asia range, sessions, relative basket strength | No centralized FX volume/order flow |
| MTF strip | Five symbols in panel | Confirmed HTF values are one HTF bar delayed |
| Radar states | Expanded/Compact/Collapsed input | No clickable collapse/header sorting in Pine |
| Native settings | 22 grouped inputs | Presets use effective internal settings |
| No-trade screen | Explicit state, risks, no generated plan | Panel density adapts to display mode |
| News risk | Three manual slots and observed reaction | No fabricated headline/calendar feed |

The implementation preserves the restrained dark hierarchy and dual-coded states. Exact typography, rounded corners, panel padding, and pixel placement remain controlled by TradingView's native renderer.
