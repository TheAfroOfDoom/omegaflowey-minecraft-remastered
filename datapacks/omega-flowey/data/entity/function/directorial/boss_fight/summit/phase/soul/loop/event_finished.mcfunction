tag @s remove has_active_soul_event

function entity:directorial/boss_fight/summit/phase/soul/static

# Delete floating soul model
execute as @e[tag=aj.soul.root,tag=soul.soul_event] run function animated_java:soul/remove/this
