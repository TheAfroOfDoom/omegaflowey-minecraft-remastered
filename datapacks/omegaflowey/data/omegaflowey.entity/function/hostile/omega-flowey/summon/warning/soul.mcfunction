## Soul heart (warning)
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
# LINK: /omegaflowey.entity:hostile/omega-flowey/summon/soul/soul/initialize.mcfunction
$execute at $(bossfight_tvscreen_warning_locator_uuid) run function animated_java:omegaflowey_soul/summon/$(soul_index)
