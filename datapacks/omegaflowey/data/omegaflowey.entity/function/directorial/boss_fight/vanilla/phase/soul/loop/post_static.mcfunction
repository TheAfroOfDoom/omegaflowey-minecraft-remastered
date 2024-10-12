# wait until the soul event finishes before continuing the boss_fight's loop
execute if entity @s[tag=has_active_soul_event] run return 0

scoreboard players add @s omegaflowey.boss-fight.progress.clock.i 1

execute if score @s omegaflowey.boss-fight.progress.clock.i = @s omegaflowey.boss-fight.progress.clock.total run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/terminate
