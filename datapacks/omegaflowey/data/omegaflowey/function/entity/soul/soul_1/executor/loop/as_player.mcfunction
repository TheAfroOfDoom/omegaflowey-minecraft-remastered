## Players can't die during soul events, so give them full resistance (resistance V)
# if their health falls below a certain threshold

# Cannot take more damage when <= 2 hearts (bullets do 1 hearts of damage)
execute if score @s omegaflowey.player.health matches ..4 run \
  effect give @s minecraft:resistance infinite 4 true
