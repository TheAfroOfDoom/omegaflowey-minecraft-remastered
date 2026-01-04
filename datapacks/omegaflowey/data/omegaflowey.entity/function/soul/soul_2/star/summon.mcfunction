$execute positioned $(next_bullet_x) 34.0 $(next_bullet_z) rotated 90 0 run \
  function animated_java:soul_2_star/summon { args: {} }

execute as @e[type=minecraft:item_display, tag=soul-star-new] run function entity:soul/soul_2/star/initialize
