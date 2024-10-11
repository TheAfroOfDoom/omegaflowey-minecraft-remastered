# wait until the soul event finishes before continuing the boss_fight's loop
execute if entity @s[tag=has_active_soul_event] run return 0

scoreboard players add @s boss-fight.progress.clock.i 1

execute if score @s boss-fight.progress.clock.i = @s boss-fight.progress.clock.total run \
  function entity:directorial/boss_fight/summit/phase/soul/terminate with storage omegaflowey:bossfight
