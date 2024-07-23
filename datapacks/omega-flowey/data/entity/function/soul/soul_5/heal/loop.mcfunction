# Check if any of this bandaid's locator's hitboxes intersect with a player
scoreboard players set #soul_5.bandaid_touched_player soul.flag 0
function animated_java:soul_5_bandaid/as_own_locator_entities { command: 'function entity:soul/soul_5/bandaid/loop/as_locator with entity @s data' }
execute if score #soul_5.bandaid_touched_player soul.flag matches 1 run function entity:soul/soul_5/bandaid/heal
execute if score #soul_5.bandaid_touched_player soul.flag matches 1 run return 0

# Move forward
teleport @s ^ ^ ^1.0

## Delete bullets once they visually escape the arena
# TODO this should share code with `soul_5/bullet`
execute store result score @s soul.bullet.position.x run data get entity @s Pos[0] 100
execute store result score @s soul.bullet.position.z run data get entity @s Pos[2] 100
execute unless score @s soul.bullet.position.x matches -3100..3200 run tag @s add should-terminate
execute unless score @s soul.bullet.position.z matches -9600..-4600 run tag @s add should-terminate
execute if entity @s[tag=should-terminate] run function entity:soul/soul_5/heal/terminate
