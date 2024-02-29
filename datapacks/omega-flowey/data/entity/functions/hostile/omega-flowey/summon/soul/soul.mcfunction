## Soul heart (soul_event)
$execute at @e[tag=aj.tv_screen.locator.soul_event] run function animated_java:soul/summon/$(soul_index)
tag @e[tag=aj.soul.root,tag=!soul.soul_event,tag=!soul.warning] add soul.soul_event
