# activate all associated bullets
function entity:group/start
tag @e[tag=attack-bullet,tag=friendliness-pellets,scores={group.id=0}] remove inactive
function entity:group/end

# Play activate sound
playsound omega-flowey:attack.friendliness-pellets.activate hostile @a ~ ~ ~ 3 1 1

kill @s
