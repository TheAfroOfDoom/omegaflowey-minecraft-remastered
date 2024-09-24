# Remove tags
tag @s remove boss_fight.phase.soul

# Next phase
function entity:directorial/boss_fight/summit/phase/attack/initialize

# Move players to main arena
execute as @a at @s unless entity @s[team=!player,team=!spectator] run teleport @s ~ ~ ~-75.0

# Re-summon main Omega Flowey models
function entity:directorial/boss_fight/summit/origin/at { \
  command: "function entity:hostile/omega-flowey/summon/relative" \
}
execute if score #omega-flowey.origin.error global.flag matches 1 run return fail
function entity:hostile/omega-flowey/animate
