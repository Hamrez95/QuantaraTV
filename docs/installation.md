# Installation

1. Open TradingView and a representative chart.
2. Open **Pine Editor**.
3. Create a new indicator and replace its contents with `src/quantara_vision.pine`.
4. Save as **Quantara Vision v0.1.0** and select **Add to chart**.
5. Begin with `Preset = Balanced`, `Trading Style = Intraday`, `Display Mode = Compact`, `Market = Auto`, and `Resource Profile = Balanced`.
6. Open Settings → Debug only when checking request budget or detected market type.
7. For Strategy Tester, repeat with `src/quantara_validation_strategy.pine` in a separate Pine script.

If TradingView reports a compiler line/error, preserve the exact line number and complete message. GitHub CI performs static policy checks but is not an official Pine compiler.

Manual event times are absolute timestamps. Configure them before the event and set the affected ticker/currency text, warning window, and cooldown. Live headlines remain available through TradingView News Flow/Economic Calendar, not this script.
