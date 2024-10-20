function omegaflowey.main:telemetry/tag/start { name: "bossfight.phase.soul" }

## Set scores
# the negative time duration is how long the static length lasts (25 ticks)
scoreboard players set @s omegaflowey.boss-fight.progress.clock.i -26
scoreboard players set @s omegaflowey.boss-fight.progress.clock.total 27

function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/static with storage omegaflowey:bossfight

# # Move players to soul arena
# execute as @a at @s unless entity @s[tag=!omegaflowey.player.fighting_flowey, tag=!omegaflowey.player.room.spectator_box] run function omegaflowey.entity:directorial/boss_fight/summit/origin/to_soul_origin

# Add tags
tag @s add boss_fight.phase.soul

# Delete main flowey models for performance reasons
function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
$execute as $(soul_model_uuid) run function animated_java:omegaflowey_soul/remove/this

# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/initialize/0
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/initialize/1
