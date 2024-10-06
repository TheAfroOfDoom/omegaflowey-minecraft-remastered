## Players can't die during soul events, so give them full resistance (resistance V)
# if their health falls below a certain threshold

# Cannot take more damage when <= 1.5 hearts (swords do 0.5 hearts of damage)
execute if score @s player.health matches ..3 run effect give @s minecraft:resistance infinite 4 true
