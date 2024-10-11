# check for pre-existence of flipped/non-flipped indicators
scoreboard players set #attack.flies.flipped_exists math.0 0
execute if entity @e[tag=attack-indicator,tag=flies,tag=is_flipped] run scoreboard players set #attack.flies.flipped_exists math.0 1
scoreboard players set #attack.flies.nonflipped_exists math.0 0
execute if entity @e[tag=attack-indicator,tag=flies,tag=!is_flipped] run scoreboard players set #attack.flies.nonflipped_exists math.0 1

# throw an error if both indicators (flipped + non-flipped) already exist
execute if score #attack.flies.nonflipped_exists math.0 matches 1 if score #attack.flies.flipped_exists math.0 matches 1 run function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/error
execute if score #attack.flies.nonflipped_exists math.0 matches 1 if score #attack.flies.flipped_exists math.0 matches 1 run return fail

# if a flipped indicator already exists, summon a non-flipped one (and vice-versa)
execute if score #attack.flies.nonflipped_exists math.0 matches 0 if score #attack.flies.flipped_exists math.0 matches 1 run function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal
execute if score #attack.flies.nonflipped_exists math.0 matches 1 if score #attack.flies.flipped_exists math.0 matches 0 run function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/flipped

# if neither exist, randomly pick one (50-50)
execute if score #attack.flies.nonflipped_exists math.0 matches 0 if score #attack.flies.flipped_exists math.0 matches 0 run function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/random

# Store new position and yaw
execute store result storage attack:flies x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:flies y double 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:flies z double 0.01 run scoreboard players get @s attack.position.z
execute store result storage attack:flies yaw float 0.01 run scoreboard players get @s attack.indicator.yaw
# flat pitch
data merge storage attack:flies { pitch: 0.0f }

function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/summon with storage attack:flies
