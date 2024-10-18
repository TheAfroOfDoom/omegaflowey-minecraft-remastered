# if player(s) have touched the ACT button, delete the locator
execute if score #omegaflowey.soul.5.touched omegaflowey.soul.flag matches 1 run return run kill @s

# otherwise, perform hitbox check with player hitbox
$execute \
  if entity @a[dx=0, dy=0, dz=0, tag=omegaflowey.player.fighting_flowey] \
  as $(soul_act_button_uuid) run \
  function omegaflowey.entity:soul/soul_5/act_button/touch with storage omegaflowey:soul.5
