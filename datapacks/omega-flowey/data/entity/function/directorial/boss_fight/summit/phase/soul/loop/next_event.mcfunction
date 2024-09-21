# Split on phase score
execute if score @s boss-fight.progress.phase.i matches 0 run function entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/0
execute if score @s boss-fight.progress.phase.i matches 5 run function entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/5

# Change tv screen variant
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.soul] run function animated_java:tv_screen/variants/default/apply

# Summon and begin animating soul heart model in front of soul screen
execute store result storage animate:soul soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i
function entity:hostile/omega-flowey/summon/soul/soul with storage animate:soul
execute as @e[tag=aj.soul.root,tag=soul.soul_event] run function entity:hostile/omega-flowey/animate/soul/soul
