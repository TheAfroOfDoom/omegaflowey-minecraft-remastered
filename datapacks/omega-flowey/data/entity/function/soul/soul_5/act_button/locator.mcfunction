# only perform hitbox check if player(s) haven't yet touched the ACT button
$execute if score #soul_5.touched soul.flag matches 0 positioned ~ ~-1 ~ \
  if entity @a[distance=..$(radius_soul_5),team=player] \
  as @e[tag=soul_5,tag=aj.act_button.root] run \
  function entity:soul/soul_5/act_button/touch
