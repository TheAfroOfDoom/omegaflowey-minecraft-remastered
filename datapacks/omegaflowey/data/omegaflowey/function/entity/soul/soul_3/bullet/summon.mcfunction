# bad word can be shaking or not shaking depending on `#omegaflowey.soul.3.word.shake_frame_idx omegaflowey.soul.clock.animation >= 0`
# LINK: /soul/soul_3/bullet/initialize.mcfunction
$execute unless score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 1 \
  if score #omegaflowey.soul.3.word.shake_frame_idx omegaflowey.soul.clock.animation matches -1 \
  positioned $(z) 0.2 $(x) rotated 90 0 run \
  function aj:omegaflowey_soul_3_word_$(idx)/summon { args: {} }

$execute unless score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 1 \
  unless score #omegaflowey.soul.3.word.shake_frame_idx omegaflowey.soul.clock.animation matches -1 \
  positioned $(z) 0.2 $(x) rotated 90 0 run \
  function aj:omegaflowey_soul_3_word_$(idx)/summon { args: { animation: 'omegaflowey_shake', frame: $(frame), start_animation: true, } }

$execute if score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 1 run \
  execute positioned $(z) 0.2 $(x) rotated 90 0 run \
  function aj:omegaflowey_soul_3_word_$(idx)/summon { args: { variant: 'good' } }
