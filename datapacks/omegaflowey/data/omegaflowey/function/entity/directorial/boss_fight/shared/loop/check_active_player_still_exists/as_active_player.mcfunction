# bossfight can only continue if all of:
# - active player still exists
# (if player exists, set stop_reason to 0)
scoreboard players set #omegaflowey.bossfight.stop_reason omegaflowey.global.flag 0

# - active player has the `fighting_flowey` tag
# (if player does not have fighting_flowey tag, set stop_reason to 2)
execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run return run \
  scoreboard players set #omegaflowey.bossfight.stop_reason omegaflowey.global.flag 2

# - active player is within the arena bounds
# (if player is not within arena bounds, set stop_reason to 3)
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
execute unless entity @s[x=-186, dx=61, y=10, dy=46, z=47, dz=60] run return run \
  scoreboard players set #omegaflowey.bossfight.stop_reason omegaflowey.global.flag 3
