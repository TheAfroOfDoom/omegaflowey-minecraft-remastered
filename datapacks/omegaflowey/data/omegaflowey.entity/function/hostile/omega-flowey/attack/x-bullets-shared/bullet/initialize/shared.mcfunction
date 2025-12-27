function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add x-bullets

execute on passengers if entity @s[tag=aj.omegaflowey_projectile_star.bone] run \
  data merge entity @s { brightness: { block: 13, sky: 0 } }

# Begin animation (except for loaded-state bullets)
execute unless score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 4 run \
  function animated_java:omegaflowey_projectile_star/animations/omegaflowey_spin_and_grow/play
