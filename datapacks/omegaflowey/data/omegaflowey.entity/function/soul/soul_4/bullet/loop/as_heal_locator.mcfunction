# only for `heal-locator`s
execute if entity @s[tag=!heal-locator] run return 0

# do nothing until player is in SAVED phase
execute if score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 0 run return 0

execute \
  at @s positioned ~ ~-0.5 ~ \
  if entity @a[distance=..1.9,tag=omegaflowey.player.fighting_flowey] run \
  scoreboard players set #omegaflowey.soul.4.should_heal omegaflowey.soul.flag 1
execute \
  at @s positioned ~ ~-1.5 ~ \
  if entity @a[distance=..1.9,tag=omegaflowey.player.fighting_flowey] run \
  scoreboard players set #omegaflowey.soul.4.should_heal omegaflowey.soul.flag 1
