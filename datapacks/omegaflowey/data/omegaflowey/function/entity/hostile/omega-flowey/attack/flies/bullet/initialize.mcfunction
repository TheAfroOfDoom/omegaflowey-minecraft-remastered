function omegaflowey:entity/hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add flies
data merge entity @s { \
  CustomName:'"Flies Bullet"', \
  interpolation_duration: 1, \
  teleport_duration: 1 \
}

# Set scores
scoreboard players operation @s omegaflowey.attack.speed.z = #omegaflowey.attack.flies omegaflowey.attack.speed.z

# 1 = non-flipped, 2 = flipped
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run \
  tag @s add is_flipped

# Face indicator (venus fly trap)
execute if entity @s[tag=is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/initialize/face_indicator with storage omegaflowey:attack.flies.flipped
execute if entity @s[tag=!is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/initialize/face_indicator with storage omegaflowey:attack.flies.nonflipped

# Flatten pitch
execute at @s run rotate @s ~ 0
