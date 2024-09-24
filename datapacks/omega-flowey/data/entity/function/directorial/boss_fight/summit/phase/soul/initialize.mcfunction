## Set scores
# the negative time duration is how long the static length lasts (25 ticks)
scoreboard players set @s boss-fight.progress.clock.i -26
scoreboard players set @s boss-fight.progress.clock.total 27

function entity:directorial/boss_fight/summit/phase/soul/static

# Move players to soul arena
execute as @a at @s unless entity @s[team=!player,team=!spectator] run teleport @s ~ ~ ~75.0

# Add tags
tag @s add boss_fight.phase.soul

# Delete main flowey models for performance reasons
function entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
execute as @e[tag=aj.soul.root,tag=soul.warning] run function animated_java:soul/remove/this
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run function animated_java:tv_screen/remove/this

# Split on phase score
execute if score @s boss-fight.progress.phase.i matches 0 run function entity:directorial/boss_fight/summit/phase/soul/initialize/0
