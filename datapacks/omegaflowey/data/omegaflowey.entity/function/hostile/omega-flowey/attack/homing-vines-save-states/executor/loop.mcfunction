scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Summon an indicator at a random player at every tick in the given range
execute if score @s omegaflowey.attack.clock.i matches 0..13 at @r[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/summon

# Don't actually load-state if a player has taken damage
execute if score #homing-vines-save-states.did_player_take_damage attack.flag matches 1 run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/loop/after_load_state
execute if score #homing-vines-save-states.did_player_take_damage attack.flag matches 1 run return 0

# Split loop logic on whether or not we've loaded state
execute if entity @s[tag=has-loaded-state] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/loop/after_load_state
execute if entity @s[tag=!has-loaded-state] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/loop/before_load_state
