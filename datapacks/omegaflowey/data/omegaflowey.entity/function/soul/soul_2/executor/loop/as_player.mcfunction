## Players can't die during soul events, so give them full resistance (resistance V)
# if their health falls below a certain threshold
execute store result score @s math.0 run data get entity @s Health 10

# cannot take more damage when <= 2 hearts (bullets do 1 hearts of damage)
execute if score @s math.0 matches ..40 run effect give @s minecraft:resistance infinite 4 true
