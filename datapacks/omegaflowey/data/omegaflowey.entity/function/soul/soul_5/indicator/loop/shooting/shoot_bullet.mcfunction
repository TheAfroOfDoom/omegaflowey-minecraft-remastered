scoreboard players add @s omegaflowey.soul.indicator.bullets.cumulative-total 1

execute if score @s omegaflowey.soul.indicator.bullets.cumulative-total matches 24 positioned ^ ^ ^2 run function omegaflowey.entity:soul/soul_5/act_button/summon
execute unless score @s omegaflowey.soul.indicator.bullets.cumulative-total matches 24 positioned ^ ^ ^2 run function omegaflowey.entity:soul/soul_5/bullet/summon

tag @s remove soul_5.shooting.rotating

$execute as $(next_crosshair_uuid) run function omegaflowey.entity:soul/soul_5/crosshair/terminate
