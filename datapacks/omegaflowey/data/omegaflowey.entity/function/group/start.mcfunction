## sets up group ID system
scoreboard players add @e[tag=groupable] omegaflowey.group.id.tree.level 1
execute if entity @s[scores={omegaflowey.group.id.tree.level=1}] run \
  scoreboard players operation #omegaflowey.group.id.restore omegaflowey.group.id = @s omegaflowey.group.id
execute if entity @s[scores={omegaflowey.group.id.tree.level=1}] run \
  scoreboard players operation @e[tag=groupable] omegaflowey.group.id -= #omegaflowey.group.id.restore omegaflowey.group.id
