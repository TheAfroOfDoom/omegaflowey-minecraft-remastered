# if player(s) have touched the ACT button, delete the locator
execute if score #soul_5.touched soul.flag matches 1 run kill @s

# otherwise, perform hitbox check
$execute positioned ~ ~-1.5 ~ \
  if entity @a[distance=..$(radius_soul_5),tag=omegaflowey.player.fighting_flowey] \
  as $(soul_act_button_uuid) run \
  function entity:soul/soul_5/act_button/touch with storage soul:soul_5
