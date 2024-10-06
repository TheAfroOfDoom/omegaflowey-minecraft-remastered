function entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen global.flag matches 1 \
  as @e[ \
    x=-186, dx=61, y=12, dy=44, z=47, dz=60, \
    type=minecraft:item_display, \
    tag=!tv_screen.outside, \
    tag=aj.tv_screen.root, \
    tag=omega-flowey-remastered \
  ] run function animated_java:tv_screen/remove/this
