$execute as @p[distance=..32,tag=summit.climbing.player,nbt={UUID:$(UUID)}] run scoreboard players operation @s summit.climbing.cooldown = @s summit.climbing.max_cooldown
