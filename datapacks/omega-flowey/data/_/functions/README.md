# Convenience functions

This directory contains convenience functions for developers for quicker calls to the `function` command.

## Functions

- `attack`: runs the pre-defined attack's `start` function
  - `attack/random/N`: randomly starts an attack from the `boss_fight`'s attack phase `N` (e.g. `N = 0`)
- `boss_fight`: starts the vanilla boss fight
- `heal`: heals the executing player to full, fills the hunger bar, and applies infinite night vision
- `reset_scores`: resets the `omega-flowey` boss's attack score parameters
- `reset`: calls `omega-flowey:reset`
- `soul/N`: starts soul N's phase
- `summon`: summons the `omega-flowey` boss's Animated Java models and starts their animations
- `tick`: runs once every tick (intentionally left blank to be customizable)
