tag @s remove omegaflowey.player.in_queue
tag @s remove omegaflowey.player.in_queue.prompted

scoreboard players set #omegaflowey.bossfight.has_player_been_prompted global.flag 0

# disable triggers
trigger player.trigger.bossfight.confirm set 0
trigger player.trigger.bossfight.deny set 0
scoreboard players set @s player.trigger.bossfight.confirm 0
scoreboard players set @s player.trigger.bossfight.deny 0

function entity:directorial/boss_fight/summit/player/queue/pop
