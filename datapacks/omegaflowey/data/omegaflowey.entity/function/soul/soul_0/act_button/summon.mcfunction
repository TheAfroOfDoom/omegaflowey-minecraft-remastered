# Summon and initialize act button
scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag 0
$execute positioned $(x) 34.5 $(z) rotated 0 0 run function animated_java:omegaflowey_act_button/summon { args: { animation: 'omegaflowey_rotate', start_animation: true, variant: 'default' } }
