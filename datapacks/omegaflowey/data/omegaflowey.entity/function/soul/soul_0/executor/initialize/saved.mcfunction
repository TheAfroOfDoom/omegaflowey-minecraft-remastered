# Update state flag
scoreboard players set #omegaflowey.soul.0.saved omegaflowey.soul.flag 1

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute at @s run function omegaflowey.entity:soul/soul_0/executor/initialize/saved/as_player' \
}

# Flash each player's screen
execute as @a[tag=omegaflowey.player.fighting_flowey] at @s anchored eyes run particle minecraft:flash ^ ^ ^0.5

# Initialize other soul event models
execute as @e[tag=soul_0,tag=act-button] run function omegaflowey.entity:soul/soul_0/act_button/initialize/saved
execute as @e[tag=omega-flowey-remastered, tag=call-for-help-display] run \
  function omegaflowey.entity:soul/shared/call_for_help_display/terminate
execute as @e[tag=soul_0,tag=soul-bullet] at @s run function omegaflowey.entity:soul/soul_0/bullet/initialize/saved
execute as @e[tag=omegaflowey.soul.soul_event,tag=aj.omegaflowey_soul.root] run function omegaflowey.entity:soul/soul_0/soul/saved
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved with storage omegaflowey:bossfight
