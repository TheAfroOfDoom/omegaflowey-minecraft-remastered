# math.0=1 => player is in the room
scoreboard players set @s math.0 1
execute \
  unless entity @s[x=-142, dx=46, y=40, dy=17, z=15, dz=30] \
  unless entity @s[x=-130, dx=6, y=36, dy=8, z=39, dz=10] \
  unless entity @s[x=-116, dx=15, y=55, dy=13, z=27, dz=12] \
  run scoreboard players set @s math.0 0

execute if entity @s[tag=!omegaflowey.player.room.underground, scores={math.0=1}] run function entity:player/room/underground/enter
execute if entity @s[tag=omegaflowey.player.room.underground, scores={math.0=0}] run function entity:player/room/underground/exit
