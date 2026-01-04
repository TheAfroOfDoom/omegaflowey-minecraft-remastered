scoreboard players add @s omegaflowey.soul.clock.i 1

# slowly over 1.5s (30t)
# https://www.desmos.com/calculator/ddvglkliir
execute if score @s omegaflowey.soul.clock.i matches 0 run \
  teleport @s ~ ~0.736 ~
execute if score @s omegaflowey.soul.clock.i matches 1..4 run \
  teleport @s ~ ~0.226 ~
execute if score @s omegaflowey.soul.clock.i matches 5..14 run \
  teleport @s ~ ~0.1187 ~
execute if score @s omegaflowey.soul.clock.i matches 15..29 run \
  teleport @s ~ ~0.0782 ~
