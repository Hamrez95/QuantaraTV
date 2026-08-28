# Indicator / strategy parity

| Rule | Indicator | Strategy | Status |
|---|---|---|---|
| Confirmed pivot strength | Effective preset/custom | Input | Matched concept |
| Structure HH/HL and LH/LL | Yes | Yes | Matched |
| BOS ATR buffer | 0.12 default | 0.12 | Matched |
| S/R proximity | 0.65 ATR | 0.65 ATR | Matched |
| EMA trend | 20/50 default | 20/50 default | Matched |
| Contextual engulf trigger | Yes | Yes | Matched core subset |
| Relative volume | 20 default | 20 default | Matched |
| Minimum score and 7-point directional gap | Yes | Yes | Matched |
| Closed-bar activation | Default | Required | Matched |
| Structural stop with ATR cap | Yes | Yes | Matched |
| Position risk | Fixed/percent | Percent | Strategy subset |
| MTF/context/event/radar | Yes | Excluded | Intentional; isolate core rules |

Any future core-rule change must update both Pine files and this table in the same PR.
