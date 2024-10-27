## The active player died after being damaged by a Flowey attack

function omegaflowey.entity:utils/damage/as_player/died/show_death_message

# Run outside tvscreen death animation
function omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation with storage omegaflowey:decorative

# Re-enable `showDeathMessages` if it was enabled previously
execute if score @s omegaflowey.math.0 matches 1 run gamerule showDeathMessages true

# Summit stats
scoreboard players add #omegaflowey.telemetry.stats.total_deaths omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_died_to_flowey matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_deaths omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_died_to_flowey 1
