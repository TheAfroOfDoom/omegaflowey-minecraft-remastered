# activate all associated bullets
function entity:group/start
tag @e[tag=attack-bullet,tag=friendliness-pellets,scores={group.id=0}] remove inactive
function entity:group/end

# TODO replace this sound
playsound minecraft:entity.egg.throw hostile @a[team=player] ~ ~ ~ 3 1 1

kill @s
