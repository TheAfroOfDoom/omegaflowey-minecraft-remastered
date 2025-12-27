function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-tv-screen

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/tv_screen/bossfight
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/tv_screen/soul
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 3 run function omegaflowey.main:summit/room/outside/setup/tv_screen

execute \
  if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1..2 \
  on passengers if entity @s[type=minecraft:marker, tag=aj.global.data] \
  run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/tv_screen/store_locator_uuids
