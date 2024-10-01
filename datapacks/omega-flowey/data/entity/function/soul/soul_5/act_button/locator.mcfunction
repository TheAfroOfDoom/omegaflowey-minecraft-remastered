# only perform hitbox check if player(s) haven't yet touched the ACT button
$execute if score #soul_5.touched soul.flag matches 0 positioned ~ ~-1.5 ~ \
  if entity @a[distance=..$(radius_soul_5),tag=omegaflowey.player.fighting_flowey] \
  as @e[tag=soul_5,tag=aj.act_button.root] run \
  function entity:soul/soul_5/act_button/touch with storage soul:soul_5
