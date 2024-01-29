## terminate if there are no more associated flies
# (`function entity:group/start` has already been ran by the bullet who called this function)
scoreboard players set #attack.flies.count math.0 0
execute as @e[scores={group.id=0},tag=attack-bullet,tag=flies] run scoreboard players add #attack.flies.count math.0 1
execute if score #attack.flies.count math.0 matches 1 run scoreboard players set @s attack.clock.i -1
execute if score #attack.flies.count math.0 matches 1 run tag @s add flies_are_done
