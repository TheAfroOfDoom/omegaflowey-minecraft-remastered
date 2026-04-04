# if player(s) have touched the ACT button, delete the locator
execute if score #omegaflowey.soul.4.touched omegaflowey.soul.flag matches 1 run return run kill @s

# otherwise, perform hitbox check with player hitbox
$execute \
  positioned ~ ~-0.5 ~ \
  if entity @a[distance=..0.7, tag=omegaflowey.player.fighting_flowey] \
  as $(soul_act_button_uuid) run return run \
  function omegaflowey:entity/soul/soul_4/act_button/touch with storage omegaflowey:soul.4
$execute \
  positioned ~ ~0.5 ~ \
  if entity @a[distance=..0.7, tag=omegaflowey.player.fighting_flowey] \
  as $(soul_act_button_uuid) run return run \
  function omegaflowey:entity/soul/soul_4/act_button/touch with storage omegaflowey:soul.4
