scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag 3
$execute positioned $(x) 33.0 $(z) rotated 180 0 run \
  function animated_java:omegaflowey_act_button/summon { \
    args: { animation: 'omegaflowey_soul_3', start_animation: true, variant: 'default' } \
  }
