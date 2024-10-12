# Mark this soul phase as being completed
execute store result storage omegaflowey:bossfight.animate soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved/macro with storage omegaflowey:bossfight.animate

# Increment progress phase
scoreboard players add @s omegaflowey.boss-fight.progress.phase.i 1
