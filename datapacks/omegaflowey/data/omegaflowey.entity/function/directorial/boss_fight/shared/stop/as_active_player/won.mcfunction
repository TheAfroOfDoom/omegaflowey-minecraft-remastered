# Split rewards based on how many hits the player took
execute if score #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag matches ..3 run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/won/give_reward_hat

execute if score #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag matches 4.. run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/won/give_reward_hat_low_hits

# Play custom item pickup sound
stopsound @s player minecraft:entity.item.pickup
playsound omega-flowey:player.get-item player @s ~ ~ ~ 10
