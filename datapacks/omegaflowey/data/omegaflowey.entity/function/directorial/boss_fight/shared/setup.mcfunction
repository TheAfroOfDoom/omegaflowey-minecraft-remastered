# reset flag that prevents us from duplicating tvscreen model on bossfight phase changes
scoreboard players set #omegaflowey.bossfight.skip_resummon_tvscreen omegaflowey.global.flag 0

# ensure various uuids are always set so functions can be called
execute unless data storage omegaflowey:bossfight active_player_uuid run data modify storage omegaflowey:bossfight active_player_uuid set value "0"
execute unless data storage omegaflowey:bossfight active_player_uuid_intarray run data modify storage omegaflowey:bossfight active_player_uuid_intarray set value "0"
execute unless data storage omegaflowey:bossfight arena_box_uuid run data modify storage omegaflowey:bossfight arena_box_uuid set value "0"
execute unless data storage omegaflowey:bossfight boss_fight_uuid run data modify storage omegaflowey:bossfight boss_fight_uuid set value "0"
execute unless data storage omegaflowey:bossfight bossfight_tvscreen_uuid run data modify storage omegaflowey:bossfight bossfight_tvscreen_uuid set value "0"
execute unless data storage omegaflowey:bossfight bossfight_tvscreen_soul_event_locator_uuid run \
  data modify storage omegaflowey:bossfight bossfight_tvscreen_soul_event_locator_uuid set value "0"
execute unless data storage omegaflowey:bossfight bossfight_tvscreen_warning_locator_uuid run \
  data modify storage omegaflowey:bossfight bossfight_tvscreen_warning_locator_uuid set value "0"
execute unless data storage omegaflowey:bossfight soul_model_uuid run data modify storage omegaflowey:bossfight soul_model_uuid set value "0"
execute unless data storage omegaflowey:bossfight soul_tvscreen_uuid run data modify storage omegaflowey:bossfight soul_tvscreen_uuid set value "0"

# reset tag-variant flag
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0

# reset attack/soul global flags
scoreboard players set #omegaflowey.attack.xbullets.type omegaflowey.global.flag 0
scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag -1
