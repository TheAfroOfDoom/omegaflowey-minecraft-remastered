## Soul heart (soul_event)
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
# LINK: /omegaflowey.entity:hostile/omega-flowey/summon/soul/soul/initialize.mcfunction
$execute at $(bossfight_tvscreen_soul_event_locator_uuid) run function animated_java:omegaflowey_soul/summon/$(soul_index)
