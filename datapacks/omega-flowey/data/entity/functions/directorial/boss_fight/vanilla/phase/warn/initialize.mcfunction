## Set scores
# Length of the WARNING sound
scoreboard players set @s boss-fight.warn.clock.total 101

# Play WARNING sound
execute at @e[tag=aj.tv_screen.root] run playsound omega-flowey:boss-fight.alarm hostile @a ~ ~ ~ 10 1

# Set Omega Flowey to WARNING variant
function entity:hostile/omega-flowey/animate/tv-screen/warning

# Set applicable petal-pipe to soul-color variant
execute store result storage animate:pipe soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i
function entity:hostile/omega-flowey/animate/pipe with storage animate:pipe

# Set scores
scoreboard players set @s boss-fight.warn.clock.i -1

# Add tags
tag @s add boss_fight.phase.warn
