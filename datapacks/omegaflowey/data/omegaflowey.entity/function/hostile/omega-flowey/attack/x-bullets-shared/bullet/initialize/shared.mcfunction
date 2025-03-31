function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add x-bullets

# Begin animation (except for loaded-state bullets)
execute unless score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 4 run \
  function animated_java:omegaflowey_projectile_star/animations/omegaflowey_spin_and_grow/play
