tag @s remove summit.climbing.infinite_invisibility
execute if data entity @s {active_effects: [{duration: -1, id: "minecraft:invisibility"}]} run tag @s add summit.climbing.infinite_invisibility
scoreboard players set @s summit.climbing.current_rotation 0
scoreboard players set @s summit.climbing.target_rotation 0
$execute at @s run summon minecraft:block_display ~ ~0.8 ~ {Tags:["summit.climbing.seat","summit.climbing.entity"],teleport_duration:12,data:{UUID:"$(UUID)"}}
$execute at @s positioned ~ ~1.6 ~ run ride @s mount @n[type=minecraft:block_display,distance=..2,tag=summit.climbing.seat,nbt={data:{UUID:"$(UUID)"}}]
attribute @s minecraft:scale modifier add summit.climbing:player -1 add_multiplied_total
attribute @s minecraft:camera_distance modifier add summit.climbing:player 15 add_multiplied_total
effect give @s minecraft:invisibility infinite 0 true
