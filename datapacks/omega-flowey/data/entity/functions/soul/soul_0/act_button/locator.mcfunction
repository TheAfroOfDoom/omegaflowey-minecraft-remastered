# only perform hitbox check if player(s) haven't yet touched the ACT button
$execute if score #soul_0.saved soul.flag matches 0 positioned ~ ~-1 ~ if entity @a[distance=..$(radius),team=player] as @e[tag=soul_0,tag=aj.act_button.root] run function entity:soul/soul_0/act_button/touch
