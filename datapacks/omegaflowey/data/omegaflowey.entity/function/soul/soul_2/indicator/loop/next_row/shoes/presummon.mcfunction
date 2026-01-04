execute store result storage soul:soul_2 next_bullet_x float 0.01 run scoreboard players get @s soul.bullet.position.x
execute store result storage soul:soul_2 next_bullet_z float 0.01 run scoreboard players get @s math.0

scoreboard players add @s soul.indicator.bullets.cumulative-total 1

execute if score @s soul.indicator.bullets.cumulative-total matches 41 run function entity:soul/soul_2/act_button/summon with storage soul:soul_2
execute unless score @s soul.indicator.bullets.cumulative-total matches 41 run function entity:soul/soul_2/bullet/summon with storage soul:soul_2
