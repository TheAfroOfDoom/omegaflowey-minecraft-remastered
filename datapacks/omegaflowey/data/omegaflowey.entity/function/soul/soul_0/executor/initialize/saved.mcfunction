# Update state flag
scoreboard players set #omegaflowey.soul.0.saved omegaflowey.soul.flag 1

# Stop event music
stopsound @a record omega-flowey:music.soul.0

# Play saved music + sound effect
playsound omega-flowey:soul.saved record @a ~ ~ ~ 10 1
playsound omega-flowey:soul.transition record @a ~ ~ ~ 10 1

# Flash each player/spectator's screen
execute as @a unless entity @s[tag=!omegaflowey.player.fighting_flowey, team=!spectator] at @s anchored eyes run particle minecraft:flash ^ ^ ^0.5

# Initialize other soul event models
execute as @e[tag=soul_0,tag=act-button] run function omegaflowey.entity:soul/soul_0/act_button/initialize/saved
execute as @e[tag=omega-flowey-remastered, tag=call-for-help-display] run \
  function omegaflowey.entity:soul/shared/call_for_help_display/terminate
execute as @e[tag=soul_0,tag=soul-bullet] at @s run function omegaflowey.entity:soul/soul_0/bullet/initialize/saved
execute as @e[tag=omegaflowey.soul.soul_event,tag=aj.soul.root] run function omegaflowey.entity:soul/soul_0/soul/saved
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved with storage omegaflowey:bossfight
