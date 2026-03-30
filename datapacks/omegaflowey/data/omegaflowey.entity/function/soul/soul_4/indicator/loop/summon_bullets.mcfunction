execute if score @s omegaflowey.soul.indicator.bullets.remaining matches ..0 run return 0

function omegaflowey.entity:soul/soul_4/indicator/loop/randomize_bullet_params

execute \
  if score @s omegaflowey.soul.indicator.bullets.remaining matches 1 \
  positioned ^ ^1 ^ run \
  function omegaflowey.entity:soul/soul_4/bullet/summon
execute \
  if score @s omegaflowey.soul.indicator.bullets.remaining matches 2 \
  positioned ^0.2 ^0.5 ^0.4 run \
  function omegaflowey.entity:soul/soul_4/bullet/summon
execute \
  if score @s omegaflowey.soul.indicator.bullets.remaining matches 3 \
  positioned ^0.4 ^0.5 ^0.2 run \
  function omegaflowey.entity:soul/soul_4/bullet/summon
execute \
  if score @s omegaflowey.soul.indicator.bullets.remaining matches 4 \
  positioned ^0.3 ^0.5 ^0.3 run \
  function omegaflowey.entity:soul/soul_4/bullet/summon

scoreboard players remove @s omegaflowey.soul.indicator.bullets.remaining 1
function omegaflowey.entity:soul/soul_4/indicator/loop/summon_bullets
