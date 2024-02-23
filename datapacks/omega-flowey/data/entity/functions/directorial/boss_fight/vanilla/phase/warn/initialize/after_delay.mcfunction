# Play WARNING sound
execute at @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run playsound omega-flowey:boss-fight.alarm hostile @a ~ ~ ~ 10 1

# Set tv screen to WARNING variant
function entity:hostile/omega-flowey/animate/warning/tv_screen

# Set applicable petal-pipe to soul-color variant
execute store result storage animate:pipe soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i
function entity:hostile/omega-flowey/animate/pipe with storage animate:pipe

# Summon and begin animating soul tv_screen in other arena
function entity:hostile/omega-flowey/summon/soul/tv_screen
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.soul] run function entity:hostile/omega-flowey/animate/soul/tv_screen
