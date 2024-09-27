## Summon bullet
# bullet head (begin animation)
# TODO: TAG_SUMMIT_HARDCODED
$execute if score @s attack.bullets.count matches 0 positioned $(x) 63.0 $(z) run function animated_java:dentata_snake_ball/summon { args: { animation: 'roll_bite', start_animation: true } }
# bullet tail
# TODO: TAG_SUMMIT_HARDCODED
$execute unless score @s attack.bullets.count matches 0 positioned $(x) 63.0 $(z) run function animated_java:dentata_snake_ball/summon/tail

# Initialize bullet
execute if score @s attack.bullets.count matches 0 as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/head
execute unless score @s attack.bullets.count matches 0 as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize/tail

# Increment bullets summoned so far
scoreboard players add @s attack.bullets.count 1

# Reset `attack.bullets.clock.i` to 0
scoreboard players set @s attack.bullets.clock.i 0

# Scale next bullet model accordingly
function entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/next_scale
