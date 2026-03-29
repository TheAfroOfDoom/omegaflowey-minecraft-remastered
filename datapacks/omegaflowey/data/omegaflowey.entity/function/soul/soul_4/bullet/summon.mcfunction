# bad word can be shaking or not shaking depending on `#omegaflowey.soul.4.word.shake_frame_idx omegaflowey.soul.clock.animation >= 0`
# LINK: /soul/soul_4/bullet/initialize.mcfunction
$execute unless score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 \
  if score #omegaflowey.soul.4.word.shake_frame_idx omegaflowey.soul.clock.animation matches -1 \
  positioned $(x) 34.0 $(z) rotated 180 0 run \
  function animated_java:omegaflowey_soul_4_word_$(idx)/summon { args: {} }

$execute unless score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 \
  unless score #omegaflowey.soul.4.word.shake_frame_idx omegaflowey.soul.clock.animation matches -1 \
  positioned $(x) 34.0 $(z) rotated 180 0 run \
  function animated_java:omegaflowey_soul_4_word_$(idx)/summon { args: { animation: 'omegaflowey_shake', frame: $(frame), start_animation: true, } }

$execute if score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 run \
  execute positioned $(x) 34.0 $(z) rotated 180 0 run \
  function animated_java:omegaflowey_soul_4_word_$(idx)/summon { args: { variant: 'good' } }
