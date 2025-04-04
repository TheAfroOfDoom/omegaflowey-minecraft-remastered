# Split on phase score
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/0
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 1 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/1
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 2 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/2
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 4 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/4

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.clock.i -1

# Add tags
tag @s add boss_fight.phase.attack

# Remove tv_screen.soul model(s) if they exist
execute as @e[tag=aj.omegaflowey_tv_screen.root,tag=tv_screen.soul] run function animated_java:omegaflowey_tv_screen/remove/this
