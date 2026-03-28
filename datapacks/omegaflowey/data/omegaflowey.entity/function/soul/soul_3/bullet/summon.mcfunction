# LINK: /soul/soul_3/bullet/initialize.mcfunction
$execute unless score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 1 run \
  execute positioned $(x) 34.0 $(z) rotated 180 0 run \
  function animated_java:omegaflowey_soul_3_word_$(idx)/summon { args: {} }

$execute if score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 1 run \
  execute positioned $(x) 34.0 $(z) rotated 180 0 run \
  function animated_java:omegaflowey_soul_3_word_$(idx)/summon { args: { variant: 'good' } }
