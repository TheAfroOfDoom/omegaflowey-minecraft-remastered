scoreboard players add @s attack.clock.i 1

# Ignore logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Pause upper_eye animations
execute if score @s attack.clock.i matches 0 as @e[tag=aj.upper_eye.root] run function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/loop/pause_eye

# Summon indicators at each upper_eye every `attack.executor.rate` ticks
scoreboard players operation @s math.0 = @s attack.clock.i
scoreboard players operation @s math.0 %= @s attack.executor.rate
execute if score @s math.0 matches 0 if score @s attack.indicator.remaining matches 1.. run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/x-bullets-upper

# Resume upper_eye visuals after done summoning bullet triplets
# ( this was found experimentally with the following command inside `../indicator/summon/x-bullets-upper`: )
# `execute if score @s attack.indicator.remaining matches 0 run tellraw @a [{"score": {"name": "@s", "objective": "attack.clock.i"}}]`
execute if score @s attack.clock.i matches 21 as @e[tag=aj.upper_eye.root] run function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate/upper_eye

# Don't actually load-state if a player has taken damage
execute if score #x-bullets-upper-save-states.did_player_take_damage attack.flag matches 1 run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/loop/after_load_state
execute if score #x-bullets-upper-save-states.did_player_take_damage attack.flag matches 1 run return 0

# Split loop logic on whether or not we've loaded state
execute if entity @s[tag=has-loaded-state] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/loop/after_load_state
execute if entity @s[tag=!has-loaded-state] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/loop/before_load_state
