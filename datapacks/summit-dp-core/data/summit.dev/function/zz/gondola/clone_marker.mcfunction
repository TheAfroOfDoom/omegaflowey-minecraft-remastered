execute if entity @s[tag=!summit.gondola.marker] run return 0
scoreboard players operation #id summit.temp = @s summit.temp
data modify storage summit:temp data set from entity @s data
execute in minecraft:superflat positioned ~-2158 ~ ~-1698 summon marker run function summit.dev:zz/gondola/clone_marker/clone
