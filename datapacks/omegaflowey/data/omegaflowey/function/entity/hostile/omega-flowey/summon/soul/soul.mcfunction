## Soul heart (soul_event)
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
# LINK: /omegaflowey:entity/hostile/omega-flowey/summon/soul/soul/initialize.mcfunction
$execute as $(bossfight_tvscreen_uuid) run function aj:omegaflowey_tv_screen/at_locator { \
  name: 'soul_event', \
  command: 'function aj:omegaflowey_soul/summon { args: { variant: "$(soul_index)" } }' \
}
