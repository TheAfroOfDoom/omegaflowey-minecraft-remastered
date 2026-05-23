# Summon and begin animating soul heart model in front of soul screen
# execute store result storage omegaflowey:bossfight soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i
# NOTE: temp for summit-2026
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run data modify storage omegaflowey:bossfight soul_index set value 3
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run data modify storage omegaflowey:bossfight soul_index set value 4
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 2 run data modify storage omegaflowey:bossfight soul_index set value 5

function omegaflowey:entity/hostile/omega-flowey/summon/soul/soul with storage omegaflowey:bossfight
function omegaflowey:entity/directorial/boss_fight/shared/phase/soul/loop/next_event/shared/animate_soul/target_soul_model with storage omegaflowey:bossfight
