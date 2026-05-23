# check for pre-existence of flipped/non-flipped indicators
function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/check_exists with storage omegaflowey:attack.flies.flipped
scoreboard players operation #omegaflowey.attack.flies.flipped_exists omegaflowey.math.0 = @s omegaflowey.attack.flag
function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/check_exists with storage omegaflowey:attack.flies.nonflipped
scoreboard players operation #omegaflowey.attack.flies.nonflipped_exists omegaflowey.math.0 = @s omegaflowey.attack.flag

# throw an error if both indicators (flipped + non-flipped) already exist
execute if score #omegaflowey.attack.flies.nonflipped_exists omegaflowey.math.0 matches 1 if score #omegaflowey.attack.flies.flipped_exists omegaflowey.math.0 matches 1 run function omegaflowey:entity/hostile/omega-flowey/attack/flies/executor/initialize/indicator/error
execute if score #omegaflowey.attack.flies.nonflipped_exists omegaflowey.math.0 matches 1 if score #omegaflowey.attack.flies.flipped_exists omegaflowey.math.0 matches 1 run return fail

# if a flipped indicator already exists, summon a non-flipped one (and vice-versa)
execute if score #omegaflowey.attack.flies.nonflipped_exists omegaflowey.math.0 matches 0 if score #omegaflowey.attack.flies.flipped_exists omegaflowey.math.0 matches 1 run function omegaflowey:entity/hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal
execute if score #omegaflowey.attack.flies.nonflipped_exists omegaflowey.math.0 matches 1 if score #omegaflowey.attack.flies.flipped_exists omegaflowey.math.0 matches 0 run function omegaflowey:entity/hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/flipped

# if neither exist, randomly pick one (50-50)
execute if score #omegaflowey.attack.flies.nonflipped_exists omegaflowey.math.0 matches 0 if score #omegaflowey.attack.flies.flipped_exists omegaflowey.math.0 matches 0 run function omegaflowey:entity/hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/random

# Store new position and yaw
execute store result storage omegaflowey:attack.flies x double 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage omegaflowey:attack.flies y double 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result storage omegaflowey:attack.flies z double 0.01 run scoreboard players get @s omegaflowey.attack.position.z
execute store result storage omegaflowey:attack.flies yaw float 0.01 run scoreboard players get @s omegaflowey.attack.indicator.yaw
# flat pitch
data merge storage omegaflowey:attack.flies { pitch: 0.0f }

function omegaflowey:entity/hostile/omega-flowey/attack/flies/executor/initialize/indicator/summon with storage omegaflowey:attack.flies
