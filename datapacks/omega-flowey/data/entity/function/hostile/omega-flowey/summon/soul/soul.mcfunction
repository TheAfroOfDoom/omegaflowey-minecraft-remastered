## Soul heart (soul_event)
$execute at @e[tag=aj.tv_screen.locator.soul_event] run function animated_java:soul/summon/$(soul_index)
tag @e[tag=aj.soul.root,tag=!soul.soul_event,tag=!soul.warning] add soul.soul_event
# TODO: convert these to use AJ's post-init functions
execute as @e[tag=aj.soul.root, tag=soul.soul_event, limit=1] run function gu:generate
data modify storage omegaflowey:bossfight soul_event_soul_model_uuid set from storage gu:main out
