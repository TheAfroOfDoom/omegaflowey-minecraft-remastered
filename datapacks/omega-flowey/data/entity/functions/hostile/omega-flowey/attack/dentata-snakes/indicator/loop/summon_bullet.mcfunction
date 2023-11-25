## Summon bullet
# bullet head
$execute if score @s attack.bullets.count matches 0 run summon minecraft:item_display $(x) 34.0 $(z) {Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","dentata-snakes","attack-bullet-head"], interpolation_duration:1,teleport_duration:1,item_display:"head",item:{id:"minecraft:melon",Count:1b}, transformation: { left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [$(scale)f, $(scale)f, $(scale)f]}}
# bullet tail
$execute unless score @s attack.bullets.count matches 0 run summon minecraft:item_display $(x) 34.0 $(z) {Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","dentata-snakes"], interpolation_duration:1,teleport_duration:1,item_display:"head",item:{id:"minecraft:quartz_block",Count:1b}, transformation: { left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [$(scale)f, $(scale)f, $(scale)f]}}
# diff between head/tail NBT is that head gets an extra tag `"attack-bullet-head"`

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize with storage attack:dentata-snakes

# Increment bullets summoned so far
scoreboard players add @s attack.bullets.count 1

# Scale next bullet model accordingly
function entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/next_scale
