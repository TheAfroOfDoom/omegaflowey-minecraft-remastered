$execute positioned 0.0 0.0 0.0 rotated $(deg) 0 run tp @s ^ ^ ^1
execute store result score cos summit.wind.calc run data get entity @s Pos[2] 100
execute store result score sin summit.wind.calc run data get entity @s Pos[0] 100
kill @s
