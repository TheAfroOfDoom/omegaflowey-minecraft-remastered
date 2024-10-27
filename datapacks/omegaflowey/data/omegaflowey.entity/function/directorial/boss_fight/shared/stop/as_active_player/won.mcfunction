scoreboard players add #omegaflowey.telemetry.stats.total_wins omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_survived_flowey matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_wins omegaflowey.global.flag 1

# Split rewards based on how many hits the player took
execute if score #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag matches ..7 run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/won/give_reward_hat_low_hits

execute unless score #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag matches ..7 run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/won/give_reward_hat

# Play custom item pickup sound
stopsound @s player minecraft:entity.item.pickup
playsound omega-flowey:player.get-item player @s ~ ~ ~ 10

# Show feedback link, but only the first time they beat it
execute unless entity @s[scores={omegaflowey.player.summit.has_survived_flowey=1}] run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/won/log_thanks_for_playing

scoreboard players set @s omegaflowey.player.summit.has_survived_flowey 1
