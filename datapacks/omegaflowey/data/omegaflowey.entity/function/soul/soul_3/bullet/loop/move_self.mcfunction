execute unless entity @s[tag=is_paused] run \
  function animated_java:omegaflowey_soul_2_shoe/animations/omegaflowey_tap/pause
tag @s add is_paused

execute store result entity @s data.speed float 0.01 run \
  scoreboard players get #omegaflowey.soul.2.bullet.speed omegaflowey.soul.velocity

function omegaflowey.entity:soul/soul_2/bullet/loop/move_self/macro with entity @s data
