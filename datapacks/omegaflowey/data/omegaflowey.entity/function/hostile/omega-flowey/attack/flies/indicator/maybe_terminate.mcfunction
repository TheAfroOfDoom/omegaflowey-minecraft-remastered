## terminate indicator if there are no more associated flies
# (`function omegaflowey.entity:group/start` has already been ran by the bullet who called this function)
scoreboard players set #omegaflowey.attack.flies.count omegaflowey.math.0 0
execute as @e[scores={omegaflowey.group.id=0},tag=attack-bullet,tag=flies] run scoreboard players add #omegaflowey.attack.flies.count omegaflowey.math.0 1
execute if score #omegaflowey.attack.flies.count omegaflowey.math.0 matches 1 run scoreboard players set @s omegaflowey.attack.clock.i -1
execute if score #omegaflowey.attack.flies.count omegaflowey.math.0 matches 1 run tag @s add flies_are_done

# let boss fight perform next attack if there are 5 flies remaining
execute if score #omegaflowey.attack.flies.count omegaflowey.math.0 matches 5 as @e[tag=boss_fight] run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/terminate/boss_fight
