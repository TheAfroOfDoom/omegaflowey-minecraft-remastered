# Remove tags
tag @s remove boss_fight.phase.soul

# Next phase
function entity:directorial/boss_fight/vanilla/phase/attack/initialize

# Move players to main arena
execute as @a at @s unless entity @s[tag=!omegaflowey.player.fighting_flowey, team=!spectator] run teleport @s ~ ~ ~75.0

# Re-summon main Omega Flowey models
function entity:hostile/omega-flowey/summon
function entity:hostile/omega-flowey/animate
