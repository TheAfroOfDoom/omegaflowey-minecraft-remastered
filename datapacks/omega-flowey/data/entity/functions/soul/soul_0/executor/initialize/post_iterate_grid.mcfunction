# delete one sword closest to each player (player's can have the same "closest-sword")
execute as @a[team=player] at @s as @e[tag=soul_0,tag=soul-bullet,sort=nearest,limit=1] run function entity:soul/soul_0/bullet/terminate
