scoreboard players add @s omegaflowey.boss-fight.warn.clock.i 1

execute if entity @s[tag=is_test_playing] run function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/test_play/loop

# Begin WARNING animation at clock index 0
execute if score @s omegaflowey.boss-fight.warn.clock.i matches 0 run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/warn/initialize/after_delay with storage omegaflowey:bossfight

# Terminate
execute if score @s omegaflowey.boss-fight.warn.clock.i >= @s omegaflowey.boss-fight.warn.clock.total run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/warn/terminate
