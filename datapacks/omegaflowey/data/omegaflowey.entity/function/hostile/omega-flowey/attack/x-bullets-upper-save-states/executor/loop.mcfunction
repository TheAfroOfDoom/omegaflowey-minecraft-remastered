scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Pause upper_eye animations
execute if score @s omegaflowey.attack.clock.i matches 0 as @e[tag=aj.upper_eye.root] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/loop/pause_eye

# Summon indicators at each upper_eye every `omegaflowey.attack.executor.rate` ticks
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s omegaflowey.math.0 %= @s omegaflowey.attack.executor.rate
execute if score @s omegaflowey.math.0 matches 0 if score @s omegaflowey.attack.indicator.remaining matches 1.. run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/x-bullets-upper

# Resume upper_eye visuals after done summoning bullet triplets
# ( this was found experimentally with the following command inside `../indicator/summon/x-bullets-upper`: )
# `execute if score @s omegaflowey.attack.indicator.remaining matches 0 run tellraw @a [{"score": {"name": "@s", "objective": "omegaflowey.attack.clock.i"}}]`
execute if score @s omegaflowey.attack.clock.i matches 21 as @e[tag=aj.upper_eye.root] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate/upper_eye

# Don't actually load-state if a player has taken damage
execute if score #x-bullets-upper-save-states.did_player_take_damage omegaflowey.attack.flag matches 1 run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/loop/after_load_state
execute if score #x-bullets-upper-save-states.did_player_take_damage omegaflowey.attack.flag matches 1 run return 0

# Split loop logic on whether or not we've loaded state
execute if entity @s[tag=has-loaded-state] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/loop/after_load_state
execute if entity @s[tag=!has-loaded-state] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/loop/before_load_state
