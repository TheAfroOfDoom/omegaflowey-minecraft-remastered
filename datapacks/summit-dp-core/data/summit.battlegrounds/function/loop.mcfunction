schedule function summit.battlegrounds:loop 1s
scoreboard players enable @a summit.battlegrounds.trigger
execute as @a at @s run function summit.battlegrounds:player/process
