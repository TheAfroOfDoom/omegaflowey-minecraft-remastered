# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/initialize/0

## Set scores
# the negative time duration is how long the static length lasts (25 ticks)
scoreboard players set @s omegaflowey.boss-fight.progress.clock.i -26
scoreboard players set @s omegaflowey.boss-fight.progress.clock.total 27

function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/static

# Move players to soul arena
execute as @a at @s unless entity @s[tag=!omegaflowey.player.fighting_flowey, tag=!omegaflowey.player.room.spectator_box] run teleport @s ~ ~ ~-75.0

# Add tags
tag @s add boss_fight.phase.soul

# Delete main flowey models for performance reasons
function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
execute as @e[tag=aj.omegaflowey_soul.root,tag=omegaflowey.soul.warning] run function animated_java:omegaflowey_soul/remove/this
execute as @e[tag=aj.omegaflowey_tv_screen.root,tag=tv_screen.boss_fight] run function animated_java:omegaflowey_tv_screen/remove/this
