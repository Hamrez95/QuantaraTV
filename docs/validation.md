# Validation evidence

Automated CI verifies file presence, Pine v6 declarations, credential patterns, required object caps, request-call inventory, forbidden marketing language, absence of release TODOs, and offset use on every `lookahead_on` line.

`src/quantara_validation_strategy.pine` reproduces the core chart-local structure/location/trend/trigger/volume score and risk rules for Strategy Tester. It reports trades, win rate, average win/loss, profit factor, expectancy, maximum drawdown, loss streak, and a net result adjusted for optional extra costs.

There is no official standalone Pine compiler in ordinary GitHub CI. A release may be called **statically validated**, but not **TradingView compiled**, until both files are pasted into an authenticated Pine Editor and added to representative charts without compiler/runtime errors. Record those results in `tests/test-matrix.md`.
