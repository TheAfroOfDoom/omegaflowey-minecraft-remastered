scoreboard players set #omegaflowey.bossfight.should_stop global.flag 1
$execute as $(active_player_uuid) if entity @s[tag=omegaflowey.player.fighting_flowey] run \
  scoreboard players set #omegaflowey.bossfight.should_stop global.flag 0
