# Set scores
scoreboard players set @s omegaflowey.boss-fight.cutscene.clock.i -1

# Add tags
tag @s add boss_fight.phase.cutscene

# Split on phase score
execute if score @s omegaflowey.boss-fight.cutscene.phase.i matches 0 run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/cutscene/initialize/0 with storage omegaflowey:bossfight
