# only perform hitbox check if player(s) haven't yet touched the ACT button
$execute if score #soul_0.activated math.0 matches 0 positioned ~ ~-1 ~ if entity @a[distance=..$(radius),team=player] run function entity:soul/soul_0/act_button/touch
