forceload add -50 -30 -50 -30
summon minecraft:item_display -50 74 -30 { Tags: ["profile-test"]}
scoreboard players remove @s math.0 1
execute if score @s math.0 matches 1.. run function _:spawn_many_entities/iterate
