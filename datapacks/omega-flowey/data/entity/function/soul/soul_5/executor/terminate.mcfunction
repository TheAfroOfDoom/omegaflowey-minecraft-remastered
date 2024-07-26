execute as @e[tag=boss_fight] run function entity:soul/soul_5/executor/terminate/as_boss_fight

execute as @e[tag=soul_5] run function entity:soul/soul_5/executor/terminate/as_root

stopsound @a record omega-flowey:music.soul.5
stopsound @a record omega-flowey:soul.saved
effect clear @a[team=player] minecraft:resistance

kill @s
