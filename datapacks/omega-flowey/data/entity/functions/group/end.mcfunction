## restores group IDs
execute if entity @s[scores={group.id.tree.level=1}] run scoreboard players operation @e[tag=groupable] group.id += #group.id.restore group.id
scoreboard players remove @e[scores={group.id.tree.level=1..},tag=groupable] group.id.tree.level 1
