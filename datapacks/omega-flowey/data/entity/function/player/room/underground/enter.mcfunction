function utils:log { text_component: ["enter underground"] }
tag @s add omegaflowey.player.room.underground

# Add effects
# resistance if player health is too low while they fall into the pit
execute store result score @s math.0 run data get entity @s Health
execute if entity @s[x=-116, dx=15, y=55, dy=13, z=27, dz=12] \
  if score @s math.0 matches ..10 run \
  effect give @s minecraft:resistance 6 4 true
