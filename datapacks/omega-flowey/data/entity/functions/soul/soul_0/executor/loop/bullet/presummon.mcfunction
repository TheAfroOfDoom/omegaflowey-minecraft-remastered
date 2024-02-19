execute store result storage soul:soul_0 x float 0.01 run scoreboard players get @s soul.bullet.position.x
execute store result storage soul:soul_0 z float 0.01 run scoreboard players get @s soul.bullet.position.z

function entity:soul/soul_0/executor/loop/bullet/summon with storage soul:soul_0
