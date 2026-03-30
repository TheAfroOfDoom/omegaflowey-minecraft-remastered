# LINK: /soul/soul_4/bullet/initialize.mcfunction
$execute unless score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 \
  rotated ~$(bullet_yaw) 0 run \
  function animated_java:omegaflowey_soul_4_bullet/summon { args: {} }

# $execute if score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 run \
#   execute positioned $(x) 34.0 $(z) rotated 180 0 run \
#   function animated_java:omegaflowey_soul_4_word_$(idx)/summon { args: { variant: 'good' } }
