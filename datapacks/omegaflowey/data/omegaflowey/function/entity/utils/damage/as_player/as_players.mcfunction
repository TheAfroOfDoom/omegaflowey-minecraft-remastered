stopsound @s player minecraft:entity.player.hurt
playsound omega-flowey:player.hurt player @s ~ ~ ~ 5

execute if score #omegaflowey.attack.flamethrower.play_burn_sound omegaflowey.attack.flag matches 1 run \
  playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1
