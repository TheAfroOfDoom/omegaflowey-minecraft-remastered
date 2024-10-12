$execute as $(boss_fight_uuid) run function omegaflowey.entity:soul/soul_0/executor/terminate/as_boss_fight

execute as @e[tag=soul_0] run function omegaflowey.entity:soul/soul_0/executor/terminate/as_root

stopsound @a record omega-flowey:music.omegaflowey.soul.0
stopsound @a record omega-flowey:soul.saved
effect clear @a[tag=omegaflowey.player.fighting_flowey] minecraft:resistance

kill @s
