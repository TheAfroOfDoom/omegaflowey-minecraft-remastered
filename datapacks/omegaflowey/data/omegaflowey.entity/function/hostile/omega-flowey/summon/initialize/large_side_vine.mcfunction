function entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-large-side-vine

execute on passengers if entity @s[tag=aj.bone] run data merge entity @s { brightness: { block: 12, sky: 0 } }

execute if score #omegaflowey.summon.tag_variant global.flag matches 1 run tag @s add large_side_vine.right
execute if score #omegaflowey.summon.tag_variant global.flag matches 2 run tag @s add large_side_vine.left
