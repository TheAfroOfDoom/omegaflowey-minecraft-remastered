## Sets the group ID of the entity who ran this to the next available group ID
## and increments the next group ID
scoreboard players operation @s omegaflowey.group.id = #omegaflowey.group.id.next omegaflowey.group.id
scoreboard players set @s omegaflowey.group.id.tree.level 0

scoreboard players add #omegaflowey.group.id.next omegaflowey.group.id 1

function omegaflowey.entity:group/assert
