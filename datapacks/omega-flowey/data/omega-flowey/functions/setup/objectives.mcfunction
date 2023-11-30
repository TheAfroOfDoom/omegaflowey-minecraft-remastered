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
# delay (in ticks) before an attack-indicator begins summoning bullets
scoreboard objectives add attack.indicator.clock.delay dummy
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
# the weight of an attack during the `random` attack's RNG
scoreboard objectives add attack.weight dummy

scoreboard objectives add boss-fight.attack.clock.i dummy
# total duration (in ticks) of the attack phase
scoreboard objectives add boss-fight.attack.clock.total dummy
# delay (in ticks) between an attack ending and the next one starting
scoreboard objectives add boss-fight.attack.delay dummy
# index of the attack phase
scoreboard objectives add boss-fight.attack.phase.i dummy
# total number of attack phases before we wrap the index
scoreboard objectives add boss-fight.attack.phase.total dummy
scoreboard objectives add boss-fight.warn.clock.i dummy
scoreboard objectives add boss-fight.warn.clock.total dummy

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
