## Add dummy objectives
# delay (in ticks) to wait after finished summoning bullets before summoning next set of bullets / performing next action
scoreboard objectives add omegaflowey.attack.bullets.clock.delay dummy
# time ticker for bullet-summoning logic
scoreboard objectives add omegaflowey.attack.bullets.clock.i dummy
# number of bullets an indicator has summoned so far
scoreboard objectives add omegaflowey.attack.bullets.count dummy
# x-coordinate for indicator to summon bullet at
scoreboard objectives add omegaflowey.attack.bullets.position.x dummy
# z-coordinate for indicator to summon bullet at
scoreboard objectives add omegaflowey.attack.bullets.position.z dummy
# storage score to hold calculated radius of a bullet for damaging-purposes
scoreboard objectives add omegaflowey.attack.bullets.radius dummy
# number of bullets left to summon in a set
scoreboard objectives add omegaflowey.attack.bullets.remaining dummy
# visual scale at which bullet is summoned
scoreboard objectives add omegaflowey.attack.bullets.scale dummy
# total number of bullets to summon each set
scoreboard objectives add omegaflowey.attack.bullets.total dummy
scoreboard objectives add omegaflowey.attack.clock.i dummy
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
# boolean flags used to mark various states of an attack
scoreboard objectives add attack.flag dummy
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
# boolean flags used to mark various states of the boss fight
scoreboard objectives add boss-fight.flag dummy
scoreboard objectives add boss-fight.progress.clock.i dummy
# total duration (in ticks) of the progress phase
scoreboard objectives add boss-fight.progress.clock.total dummy
# index of the progress phase
scoreboard objectives add boss-fight.progress.phase.i dummy
# total number of progress phases in the boss fight
scoreboard objectives add boss-fight.progress.phase.total dummy
scoreboard objectives add boss-fight.warn.clock.i dummy
scoreboard objectives add boss-fight.warn.clock.total dummy

scoreboard objectives add omegaflowey.global.flag dummy

scoreboard objectives add group.id dummy
scoreboard objectives add group.id.tree.level dummy

scoreboard objectives add math.0 dummy
scoreboard objectives add math.1 dummy
scoreboard objectives add math.2 dummy
scoreboard objectives add math.bool dummy
scoreboard objectives add math.const dummy
scoreboard objectives add math.trials dummy

scoreboard objectives add music.clock.i dummy
scoreboard objectives add music.clock.total dummy

scoreboard objectives add player.deaths.current deathCount
scoreboard objectives add player.deaths.previous dummy
scoreboard objectives add player.flag dummy
scoreboard objectives add player.leave.current minecraft.custom:minecraft.leave_game
scoreboard objectives add player.leave.previous dummy
scoreboard objectives add player.health health
scoreboard objectives add player.shake.pitch dummy
scoreboard objectives add player.shake.yaw dummy
scoreboard objectives add player.trigger.bossfight.confirm trigger
scoreboard objectives add player.trigger.bossfight.deny trigger

# x/z spans of the bullet grid
scoreboard objectives add soul.bullet.position.dx dummy
scoreboard objectives add soul.bullet.position.dz dummy
# x start/end points of the bullet grid
scoreboard objectives add soul.bullet.position.x dummy
scoreboard objectives add soul.bullet.position.x.end dummy
# yaw bullets will summon at
scoreboard objectives add soul.bullet.position.yaw dummy
# z start/end points of the bullet grid
scoreboard objectives add soul.bullet.position.z dummy
scoreboard objectives add soul.bullet.position.z.end dummy
scoreboard objectives add soul.clock.animation dummy
scoreboard objectives add soul.clock.i dummy
# used as a reference score for when the player touches the ACT button
scoreboard objectives add soul.clock.touched_act_button dummy
# length an soul-executor will exist (length this soul event will last if the act button is never touched)
scoreboard objectives add soul.executor.clock.length dummy
# stored x position of a healer entity
scoreboard objectives add soul.healer.position.x dummy
# stored z position of a healer entity
scoreboard objectives add soul.healer.position.z dummy
# cumulative number of bullets an indicator has summoned so far
scoreboard objectives add soul.indicator.bullets.cumulative-total dummy
# number of bullets left to summon in a set
scoreboard objectives add soul.indicator.bullets.remaining dummy
scoreboard objectives add soul.indicator.bullets.total dummy
# boolean flags used to mark state changes during soul events
scoreboard objectives add soul.flag dummy

# the final yaw an entity has after running bounce calculations
scoreboard objectives add util.bounce.yaw dummy
# the initial yaw an entity starts with before running bounce calculations
scoreboard objectives add util.bounce.yaw.initial dummy
