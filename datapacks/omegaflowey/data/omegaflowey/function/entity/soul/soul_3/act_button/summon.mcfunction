# LINK: /soul/shared/act_button/initialize.mcfunction
scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag 3
$execute positioned $(z) 0.2 $(x) rotated 90 0 run \
  function aj:omegaflowey_act_button/summon { \
    args: { animation: 'omegaflowey_soul_3', start_animation: true, variant: 'default' } \
  }
