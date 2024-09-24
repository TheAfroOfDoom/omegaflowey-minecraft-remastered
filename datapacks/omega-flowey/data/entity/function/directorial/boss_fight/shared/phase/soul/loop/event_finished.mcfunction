tag @s remove has_active_soul_event

function entity:directorial/boss_fight/shared/phase/soul/static

# Delete floating soul model
execute as @e[type=minecraft:item_display, tag=aj.soul.root, tag=soul.soul_event] run function animated_java:soul/remove/this
