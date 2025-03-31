# Default
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
# x-bullets-upper-save-states
execute if entity @s[tag=x-bullets-upper-save-states] run \
  scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 3

# Summon and initialize bullet (animation is just a hack to further lengthen the vine)
$execute positioned $(x) $(y) $(z) rotated $(bullet_yaw) $(bullet_pitch) run \
  function animated_java:omegaflowey_homing_vine/summon { args: { animation: "omegaflowey_default", start_animation: true } }

# Increment bullets summoned so far
scoreboard players add @s omegaflowey.attack.bullets.count 1
