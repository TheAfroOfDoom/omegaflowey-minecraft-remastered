## Summon and initialize bullet
$summon minecraft:item_display $(x) 34.0 $(z) {Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","dentata-snakes"], interpolation_duration:1,teleport_duration:1,item_display:"head",item:{id:"minecraft:quartz_block",Count:1b}}
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/initialize
