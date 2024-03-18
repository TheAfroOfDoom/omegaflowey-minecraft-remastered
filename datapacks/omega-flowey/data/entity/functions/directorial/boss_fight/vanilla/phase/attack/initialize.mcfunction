# Split on phase score
execute if score @s boss-fight.attack.phase.i matches 0 run function entity:directorial/boss_fight/vanilla/phase/attack/initialize/0
execute if score @s boss-fight.attack.phase.i matches 1 run function entity:directorial/boss_fight/vanilla/phase/attack/initialize/1
execute if score @s boss-fight.attack.phase.i matches 2 run function entity:directorial/boss_fight/vanilla/phase/attack/initialize/2

# Set scores
scoreboard players set @s boss-fight.attack.clock.i -1

# Add tags
tag @s add boss_fight.phase.attack

# Remove tv_screen.soul model(s) if they exist
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.soul] run function animated_java:tv_screen/remove/this
