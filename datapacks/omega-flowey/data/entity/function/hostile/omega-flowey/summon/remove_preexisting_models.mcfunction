function entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen global.flag matches 1 \
  as @e[type=minecraft:item_display, tag=aj.tv_screen.root, tag=!tv_screen.outside] run function animated_java:tv_screen/remove/this
