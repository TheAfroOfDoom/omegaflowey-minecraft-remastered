scoreboard players add @s omegaflowey.boss-fight.warn.clock.i 1

# Begin WARNING animation at clock index 0
execute if score @s omegaflowey.boss-fight.warn.clock.i matches 0 run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/warn/initialize/after_delay with storage omegaflowey:bossfight

# Terminate
execute if score @s omegaflowey.boss-fight.warn.clock.i >= @s omegaflowey.boss-fight.warn.clock.total run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/warn/terminate
