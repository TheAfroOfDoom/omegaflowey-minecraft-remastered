function entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-tv-screen

execute if score #omegaflowey.summon.tag_variant global.flag matches 1 run tag @s add tv_screen.boss_fight
execute if score #omegaflowey.summon.tag_variant global.flag matches 2 run tag @s add tv_screen.soul
execute if score #omegaflowey.summon.tag_variant global.flag matches 3 run function omega-flowey:summit/room/outside/setup/tv_screen
