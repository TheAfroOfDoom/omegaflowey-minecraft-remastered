## Sets the group ID of the entity who ran this to the next available group ID
## and increments the next group ID
scoreboard players operation @s group.id = #group.id.next group.id
scoreboard players set @s group.id.tree.level 0

scoreboard players add #group.id.next group.id 1

function entity:group/assert
