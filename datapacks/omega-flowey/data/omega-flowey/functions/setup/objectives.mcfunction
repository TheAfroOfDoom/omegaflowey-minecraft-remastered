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
scoreboard objectives add attack.clock.i dummy
scoreboard objectives add attack.cone dummy
# delay (in ticks) before an attack-executor begins summoning indicators
scoreboard objectives add attack.executor.clock.delay dummy
# length an attack-executor will exist
scoreboard objectives add attack.executor.clock.length dummy
# how often (in ticks) an attack-executor summons an attack-indicator
scoreboard objectives add attack.executor.rate dummy
# how many times an attack-executor will repeat its indicator-summoning behavior (ongoing-count)
scoreboard objectives add attack.executor.repeat.count.i dummy
# how many times an attack-executor will repeat its indicator-summoning behavior (total count)
scoreboard objectives add attack.executor.repeat.count.total dummy
# how long (in ticks) an attack-executor will wait until repeating its indicator-summong behavior
scoreboard objectives add attack.executor.repeat.delay dummy
scoreboard objectives add attack.indicator.animation.index dummy
# delay (in ticks) before an attack-indicator begins summoning bullets
scoreboard objectives add attack.indicator.clock.delay dummy
# length an attack-indicator will exist
scoreboard objectives add attack.indicator.clock.length dummy
# radius (in blocks) at which to summon bullets around attack-indicator
scoreboard objectives add attack.indicator.radius dummy
# how often (in ticks) an attack-indicator summons an attack-bullet
scoreboard objectives add attack.indicator.rate dummy
# number of indicators left to summon in a set
scoreboard objectives add attack.indicator.remaining dummy
# total number of indicators an attack-executor will summon
scoreboard objectives add attack.indicator.total dummy
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
scoreboard objectives add boss-fight.progress.clock.i dummy
# total duration (in ticks) of the progress phase
scoreboard objectives add boss-fight.progress.clock.total dummy
# index of the progress phase
scoreboard objectives add boss-fight.progress.phase.i dummy
# total number of progress phases in the boss fight
scoreboard objectives add boss-fight.progress.phase.total dummy
scoreboard objectives add boss-fight.warn.clock.i dummy
scoreboard objectives add boss-fight.warn.clock.total dummy

scoreboard objectives add group.id dummy
scoreboard objectives add group.id.tree.level dummy

scoreboard objectives add math.0 dummy
scoreboard objectives add math.1 dummy
scoreboard objectives add math.2 dummy
scoreboard objectives add math.bool dummy

scoreboard objectives add player.shake.pitch dummy
scoreboard objectives add player.shake.yaw dummy

scoreboard objectives add random dummy
scoreboard objectives add random.min dummy
scoreboard objectives add random.range dummy

scoreboard objectives add soul.bullet.position.dx dummy
scoreboard objectives add soul.bullet.position.dz dummy
scoreboard objectives add soul.bullet.position.x dummy
scoreboard objectives add soul.bullet.position.x.end dummy
scoreboard objectives add soul.bullet.position.z dummy
scoreboard objectives add soul.bullet.position.z.end dummy
scoreboard objectives add soul.clock.i dummy
# length an soul-executor will exist
scoreboard objectives add soul.executor.clock.length dummy

# the final yaw an entity has after running bounce calculations
scoreboard objectives add util.bounce.yaw dummy
# the initial yaw an entity starts with before running bounce calculations
scoreboard objectives add util.bounce.yaw.initial dummy
