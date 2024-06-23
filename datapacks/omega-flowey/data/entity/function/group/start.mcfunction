## sets up group ID system
scoreboard players add @e[tag=groupable] group.id.tree.level 1
execute if entity @s[scores={group.id.tree.level=1}] run scoreboard players operation #group.id.restore group.id = @s group.id
execute if entity @s[scores={group.id.tree.level=1}] run scoreboard players operation @e[tag=groupable] group.id -= #group.id.restore group.id
