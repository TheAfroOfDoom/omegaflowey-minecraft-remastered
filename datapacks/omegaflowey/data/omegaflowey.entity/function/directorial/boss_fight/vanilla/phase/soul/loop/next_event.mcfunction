function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/next_event

function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/loop/next_event/shared/animate_soul with storage omegaflowey:bossfight

# Split on phase score
execute if score @s boss-fight.progress.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/0
execute if score @s boss-fight.progress.phase.i matches 5 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/5
