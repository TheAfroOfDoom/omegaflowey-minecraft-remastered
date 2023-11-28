### Sets up objectives, fake players, entities, and teams required for the map to run.

## Add teams
team add player
team modify player color blue
team modify player friendlyFire false
team modify player seeFriendlyInvisibles false

## Add dummy objectives
# delay (in ticks) to wait after finished summoning bullets before summoning next set of bullets / performing next action
scoreboard objectives add attack.bullets.clock.delay dummy
# time ticker for bullet-summoning logic
scoreboard objectives add attack.bullets.clock.i dummy
# number of bullets an indicator has summoned so far
scoreboard objectives add attack.bullets.count dummy
# x-coordinate for indicator to summon bullet at
scoreboard objectives add attack.bullets.position.x dummy
# z-coordinate for indicator to summon bullet at
scoreboard objectives add attack.bullets.position.z dummy
# storage score to hold calculated radius of a bullet for damaging-purposes
scoreboard objectives add attack.bullets.radius dummy
# number of bullets left to summon in a set
scoreboard objectives add attack.bullets.remaining dummy
# visual scale at which bullet is summoned
scoreboard objectives add attack.bullets.scale dummy
# total number of bullets to summon each set
scoreboard objectives add attack.bullets.total dummy
scoreboard objectives add attack.clock.delay dummy
scoreboard objectives add attack.clock.i dummy
scoreboard objectives add attack.clock.length dummy
scoreboard objectives add attack.cone dummy
scoreboard objectives add attack.executor.clock.length dummy
# how often (in ticks) an attack-executor summons an attack-indicator
scoreboard objectives add attack.executor.rate dummy
scoreboard objectives add attack.indicator.animation.index dummy
# radius (in blocks) at which to summon bullets around attack-indicator
scoreboard objectives add attack.indicator.radius dummy
scoreboard objectives add attack.indicator.yaw dummy
scoreboard objectives add attack.theta dummy
scoreboard objectives add attack.d-theta dummy
scoreboard objectives add attack.phi dummy
scoreboard objectives add attack.d-phi dummy
scoreboard objectives add attack.position.x dummy
scoreboard objectives add attack.position.y dummy
scoreboard objectives add attack.position.z dummy
scoreboard objectives add attack.speed.x dummy
scoreboard objectives add attack.speed.y dummy
scoreboard objectives add attack.speed.z dummy

scoreboard objectives add group.id dummy
scoreboard objectives add group.id.tree.level dummy

scoreboard objectives add math.0 dummy
scoreboard objectives add math.1 dummy
scoreboard objectives add math.2 dummy

scoreboard objectives add random dummy
scoreboard objectives add random.min dummy
scoreboard objectives add random.range dummy

scoreboard objectives add player.shake.pitch dummy
scoreboard objectives add player.shake.yaw dummy

function entity:setup

# Reset next group ID if there are no `groupable` entities
execute unless entity @e[tag=groupable] run scoreboard players set #group.id.next group.id 0
