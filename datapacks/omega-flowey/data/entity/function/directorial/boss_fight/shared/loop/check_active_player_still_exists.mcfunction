scoreboard players set #omegaflowey.bossfight.should_stop global.flag 1

# bossfight can only continue if all of:
# - active player still exists
# - active player has the `fighting_flowey` tag
# - active player is within the arena bounds

# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
$execute \
  as $(active_player_uuid) \
  if entity @s[ \
    x=-186, dx=61, y=12, dy=44, z=47, dz=60, \
    tag=omegaflowey.player.fighting_flowey \
  ] run scoreboard players set #omegaflowey.bossfight.should_stop global.flag 0
