# Remove tags
tag @s remove boss_fight.phase.soul
tag @s remove event_is_done

# TODO: this should happen elsewhere, after the player grabs the ACT button
# # Increment progress phase
# scoreboard players add @s boss-fight.progress.phase.i 1

# Move players to main arena
execute as @a at @s unless entity @s[team=!player,team=!spectator] run teleport @s ~ ~ ~75.0

# Re-summon main Omega Flowey models
function entity:hostile/omega-flowey/summon
function entity:hostile/omega-flowey/animate
