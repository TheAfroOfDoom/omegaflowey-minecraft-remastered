# LINK: /soul/soul_4/bullet/initialize.mcfunction
$execute unless score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 \
  rotated ~$(bullet_yaw) 0 run \
  function animated_java:omegaflowey_soul_4_bullet/summon { args: { animation: 'omegaflowey_idle', start_animation: true } }

$execute if score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 \
  rotated ~$(bullet_yaw) 20.0 run \
  function animated_java:omegaflowey_soul_4_bullet/summon { args: { animation: 'omegaflowey_idle', start_animation: true, variant: 'egg' } }
