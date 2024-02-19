execute as @e[tag=boss_fight] run function entity:soul/soul_0/executor/terminate/boss_fight

execute as @e[tag=soul_0,tag=soul-bullet] run function entity:soul/soul_0/bullet/terminate

kill @s
