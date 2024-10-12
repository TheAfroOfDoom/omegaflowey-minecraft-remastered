## restores group IDs
execute if entity @s[scores={omegaflowey.group.id.tree.level=1}] run \
  scoreboard players operation @e[tag=groupable] omegaflowey.group.id += #omegaflowey.group.id.restore omegaflowey.group.id
scoreboard players remove @e[scores={omegaflowey.group.id.tree.level=1..},tag=groupable] omegaflowey.group.id.tree.level 1
