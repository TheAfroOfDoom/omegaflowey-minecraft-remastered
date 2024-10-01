function utils:log/self { text_component: ["exit booth"] }
tag @s remove omegaflowey.player

# Remove all room tags if necessary
execute if entity @s[tag=omegaflowey.player.room.underground] run function entity:player/room/underground/exit
