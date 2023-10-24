## Sets up objectives, fake players, entities, and teams required for the map to run.

# Debugging
execute if entity @a[scores={debug=1}] run say DEBUG: function omega-flowey:setup

# Add teams
team add player
team modify player color blue
team modify player friendlyFire false
team modify player seeFriendlyInvisibles false

# Add objectives
# Dummy
scoreboard objectives add attack.bullets dummy
scoreboard objectives add attack.bullets.remaining dummy
scoreboard objectives add attack.clock dummy
scoreboard objectives add attack.cone dummy
scoreboard objectives add attack.length dummy
scoreboard objectives add attack.indicator.yaw dummy
scoreboard objectives add attack.theta dummy
scoreboard objectives add attack.d-theta dummy
scoreboard objectives add attack.phi dummy
scoreboard objectives add attack.d-phi dummy
scoreboard objectives add attack.rate dummy
scoreboard objectives add attack.rate.i dummy

scoreboard objectives add attack.speed.x dummy
scoreboard objectives add attack.speed.y dummy
scoreboard objectives add attack.speed.z dummy

scoreboard objectives add constant dummy

scoreboard objectives add math.0 dummy

# Set fake-players (constants and attack properties)
scoreboard players set #2 constant 2

function entity:setup
