particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0 4
particle minecraft:spit ~ ~ ~ 0.3 0.3 0.3 0.3 20
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
execute at @s rotated as @s rotated ~-180 ~ run function summit.zipline:move/stop
