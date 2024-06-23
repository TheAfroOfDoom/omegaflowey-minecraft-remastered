# Mark this soul phase as being completed
execute store result storage boss_fight:animate soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i
function entity:directorial/boss_fight/vanilla/phase/soul/loop/saved/macro with storage boss_fight:animate

# Increment progress phase
scoreboard players add @s boss-fight.progress.phase.i 1
