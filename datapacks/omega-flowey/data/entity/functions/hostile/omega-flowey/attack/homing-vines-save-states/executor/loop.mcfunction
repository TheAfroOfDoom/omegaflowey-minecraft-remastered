scoreboard players add @s attack.clock.i 1

# Ignore logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Summon an indicator at a random player at every tick in the given range
execute if score @s attack.clock.i matches 0..13 at @r[team=player] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/summon

# Split loop logic on whether or not we've loaded state
execute if entity @s[tag=has-loaded-state] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/loop/after_load_state
execute if entity @s[tag=!has-loaded-state] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/loop/before_load_state
