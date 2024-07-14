# replace the bullet closest to the pre-defined point with an act_button
execute positioned 0 34 -96 as @e[tag=soul_5,tag=soul-bullet,sort=nearest,limit=1] at @s run function entity:soul/soul_5/bullet/replace

# delete one sword closest to each player (player's can have the same "closest-sword")
execute as @a[team=player] at @s as @e[tag=soul_5,tag=soul-bullet,sort=nearest,limit=1] run function entity:soul/soul_5/bullet/terminate
