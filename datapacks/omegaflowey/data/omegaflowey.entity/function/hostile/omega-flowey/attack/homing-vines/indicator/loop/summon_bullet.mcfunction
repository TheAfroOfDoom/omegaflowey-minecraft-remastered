# Summon and initialize bullet (animation is just a hack to further lengthen the vine)
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
$execute positioned $(x) $(y) $(z) rotated $(bullet_yaw) $(bullet_pitch) run \
  function animated_java:omegaflowey_homing_vine/summon { args: { animation: "omegaflowey_default", start_animation: true } }

# Increment bullets summoned so far
scoreboard players add @s omegaflowey.attack.bullets.count 1
