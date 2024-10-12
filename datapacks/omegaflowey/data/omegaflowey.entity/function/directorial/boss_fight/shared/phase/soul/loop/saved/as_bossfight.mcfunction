# Mark this soul phase as being completed
execute store result storage boss_fight:animate soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved/macro with storage boss_fight:animate

# Increment progress phase
scoreboard players add @s omegaflowey.boss-fight.progress.phase.i 1
