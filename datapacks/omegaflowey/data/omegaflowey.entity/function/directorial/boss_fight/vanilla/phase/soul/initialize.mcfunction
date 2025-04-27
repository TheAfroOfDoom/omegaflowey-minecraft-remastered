## Set scores
# the negative time duration is how long the static length lasts (25 ticks)
scoreboard players set @s omegaflowey.boss-fight.progress.clock.i -26
scoreboard players set @s omegaflowey.boss-fight.progress.clock.total 27

function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/static with storage omegaflowey:bossfight

# Move players to soul arena
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  "execute at @s run function omegaflowey.entity:directorial/boss_fight/vanilla/origin/to_soul_origin" \
}

# Add tags
tag @s add boss_fight.phase.soul

# Delete main flowey models for performance reasons
function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
$execute as $(bossfight_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/remove/this
$execute as $(soul_model_uuid) run function animated_java:omegaflowey_soul/remove/this

# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/initialize/0
