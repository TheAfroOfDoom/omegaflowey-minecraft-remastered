# Remove tags
tag @s remove boss_fight.phase.soul

# Next phase
function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize

# Move players to main arena
execute as @a at @s unless entity @s[tag=!omegaflowey.player.fighting_flowey, tag=!omegaflowey.player.room.spectator_box] run teleport @s ~ ~ ~75.0

# Re-summon main Omega Flowey models
function omegaflowey.entity:hostile/omega-flowey/summon
function omegaflowey.entity:hostile/omega-flowey/animate
