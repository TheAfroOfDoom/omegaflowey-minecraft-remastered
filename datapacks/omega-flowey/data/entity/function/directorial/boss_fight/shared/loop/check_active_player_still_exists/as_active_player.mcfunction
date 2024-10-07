# bossfight can only continue if all of:
# - active player still exists

# - active player has the `fighting_flowey` tag
execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run return run \
  scoreboard players set #omegaflowey.bossfight.stop_reason global.flag 1

# - active player is within the arena bounds
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
execute unless entity @s[x=-186, dx=61, y=12, dy=44, z=47, dz=60] run return run \
  scoreboard players set #omegaflowey.bossfight.stop_reason global.flag 2
