# Stop event music
stopsound @a record omega-flowey:music.soul.0

# Play saved music + sound effect
playsound omega-flowey:soul.saved record @a ~ ~ ~ 10 1
playsound omega-flowey:soul.transition record @a ~ ~ ~ 10 1

# TODO: Flash each player/spectator's screen

# Initialize other soul event models
execute as @e[tag=soul_0,tag=act-button] run function entity:soul/soul_0/act_button/initialize/saved
execute as @e[tag=soul_0,tag=soul-bullet] at @s run function entity:soul/soul_0/bullet/initialize/saved
execute as @e[tag=soul.soul_event,tag=aj.soul.root] run function entity:soul/soul_0/soul/saved
execute as @e[tag=boss_fight] run function entity:directorial/boss_fight/vanilla/phase/soul/loop/saved
