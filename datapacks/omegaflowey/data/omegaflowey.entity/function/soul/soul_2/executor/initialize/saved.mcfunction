# Update state flag
scoreboard players set #soul_2.saved soul.flag 1

# Stop event music
stopsound @a record omega-flowey:music.soul.2

# Play saved music + sound effect
playsound omega-flowey:soul.saved record @a ~ ~ ~ 10 1
playsound omega-flowey:soul.transition record @a ~ ~ ~ 10 1

# Flash each player/spectator's screen
execute as @a unless entity @s[team=!player,team=!spectator] at @s anchored eyes run particle minecraft:flash ^ ^ ^0.2

# Initialize other soul event models
execute as @e[tag=boss_fight] run function entity:directorial/boss_fight/vanilla/phase/soul/loop/saved
