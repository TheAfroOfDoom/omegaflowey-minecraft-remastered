# Play WARNING sound
execute at @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run playsound omega-flowey:boss-fight.alarm ambient @a ~ ~ ~ 10 1

# Set tv screen to WARNING variant
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run function entity:hostile/omega-flowey/animate/warning/tv_screen

execute store result storage animate:soul soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i

# Set applicable petal-pipe to soul-color variant
function entity:hostile/omega-flowey/animate/pipe with storage animate:soul

# Summon and begin animating soul heart model in front of WARNING screen
function entity:hostile/omega-flowey/summon/warning/soul with storage animate:soul
execute as @e[tag=aj.soul.root,tag=soul.warning] run function entity:hostile/omega-flowey/animate/warning/soul

# Summon and begin animating soul tv_screen in other arena
function entity:hostile/omega-flowey/summon/soul/tv_screen
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.soul] run function entity:hostile/omega-flowey/animate/soul/tv_screen
