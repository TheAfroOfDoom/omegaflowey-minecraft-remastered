function _:tick

# Run heartbeat
execute as @a at @s run function entity:player/tick
execute as @e[tag=omega-flowey-remastered] at @s run function entity:tick
