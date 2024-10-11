# check whether the attacker was a player or not
scoreboard players set #player.took_damage.source_was_nonplayer player.flag 1
execute on attacker if entity @s[type=!minecraft:player] run scoreboard players set #player.took_damage.source_was_nonplayer player.flag 0

execute if score #player.took_damage.source_was_nonplayer player.flag matches 1 run function omegaflowey.entity:player/took_damage/from_nonplayer

advancement revoke @s only omegaflowey.entity:player_took_damage
