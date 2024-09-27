## summons an indicator at a player

# Summon indicator
# NOTE: this is -4 blocks from origin's Y coordinate
# TODO: TAG_SUMMIT_HARDCODED
execute at @r[team=player] positioned ~ 63.0 ~ run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/summon

# TODO(43): this is so unbelievably hacky
# first indicator is 6 ticks slower before it starts summoning bullets
execute if score @s attack.clock.i matches 0 run scoreboard players add #attack-friendliness-pellets attack.indicator.clock.delay 6

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/initialize

# TODO(43): this is so unbelievably hacky
execute if score @s attack.clock.i matches 0 run scoreboard players remove #attack-friendliness-pellets attack.indicator.clock.delay 6
