scoreboard players add @s omegaflowey.boss-fight.cutscene.clock.i 1
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches ..-1 run return 0

# Run cutscene specific logic
execute if score @s omegaflowey.boss-fight.cutscene.phase.i matches 0 run return run \
  function omegaflowey.entity:directorial/boss_fight/summit/phase/cutscene/loop/0
