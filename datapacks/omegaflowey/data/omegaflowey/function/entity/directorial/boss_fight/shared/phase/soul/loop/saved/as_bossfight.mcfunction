# Mark this soul phase as being completed
# TODO(323): temp for summit-2026
# execute store result storage omegaflowey:bossfight.animate soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run data modify storage omegaflowey:bossfight soul_index set value 3
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run data modify storage omegaflowey:bossfight soul_index set value 4
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 2 run data modify storage omegaflowey:bossfight soul_index set value 5
function omegaflowey:entity/directorial/boss_fight/shared/phase/soul/loop/saved/macro with storage omegaflowey:bossfight.animate

# Increment progress phase
scoreboard players add @s omegaflowey.boss-fight.progress.phase.i 1
