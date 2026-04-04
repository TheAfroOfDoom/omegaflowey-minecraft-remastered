# LINK: /soul/shared/act_button/initialize.mcfunction
scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag 4
execute rotated ~ 0 run \
  function animated_java:omegaflowey_act_button/summon { \
    args: { animation: 'omegaflowey_soul_4', start_animation: true, variant: 'default' } \
  }
