execute as @e[tag=boss_fight] run function entity:soul/soul_0/executor/terminate/boss_fight

execute as @e[tag=soul_0] run function entity:soul/soul_0/executor/terminate/as_root

stopsound @a record omega-flowey:music.soul.0

kill @s
