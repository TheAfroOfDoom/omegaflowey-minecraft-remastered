execute \
  at @s \
  if entity @a[distance=..0.9,tag=omegaflowey.player.fighting_flowey] run \
  scoreboard players set #omegaflowey.soul.3.note_touched_player omegaflowey.soul.flag 1
execute \
  at @s positioned ~ ~-1.0 ~ \
  if entity @a[distance=..1.0,tag=omegaflowey.player.fighting_flowey] run \
  scoreboard players set #omegaflowey.soul.3.note_touched_player omegaflowey.soul.flag 1
