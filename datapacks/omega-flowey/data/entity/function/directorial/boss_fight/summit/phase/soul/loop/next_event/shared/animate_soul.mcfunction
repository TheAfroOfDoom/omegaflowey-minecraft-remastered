# Summon and begin animating soul heart model in front of soul screen
execute store result storage omegaflowey:bossfight soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i
function entity:hostile/omega-flowey/summon/soul/soul with storage omegaflowey:bossfight
function entity:directorial/boss_fight/summit/phase/soul/loop/next_event/shared/animate_soul/target_soul_model with storage omegaflowey:bossfight
