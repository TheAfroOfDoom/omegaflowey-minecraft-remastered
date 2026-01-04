scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag 2
$execute positioned $(next_bullet_x) 34.0 $(next_bullet_z) run \
  function animated_java:omegaflowey_act_button/summon { args: { variant: 'default' } }
