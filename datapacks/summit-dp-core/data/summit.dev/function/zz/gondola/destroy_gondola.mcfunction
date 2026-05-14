execute if entity @s[tag=!summit.gondola] run return 0
scoreboard players operation #id summit.temp = @s summit.id
execute as @e[tag=summit.gondola.seat] if score @s summit.temp = #id summit.temp run kill @s
kill @s
