# Play WARNING sound
execute at @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run playsound omega-flowey:boss-fight.alarm hostile @a ~ ~ ~ 10 1

# Set Omega Flowey to WARNING variant
function entity:hostile/omega-flowey/animate/tv-screen/warning

# Set applicable petal-pipe to soul-color variant
execute store result storage animate:pipe soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i
function entity:hostile/omega-flowey/animate/pipe with storage animate:pipe
