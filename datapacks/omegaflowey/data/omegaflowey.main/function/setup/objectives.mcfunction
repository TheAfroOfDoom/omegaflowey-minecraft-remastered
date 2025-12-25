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
scoreboard objectives add omegaflowey.attack.cone dummy
# delay (in ticks) before an attack-executor begins summoning indicators
scoreboard objectives add omegaflowey.attack.executor.clock.delay dummy
# length an attack-executor will exist
scoreboard objectives add omegaflowey.attack.executor.clock.length dummy
# how often (in ticks) an attack-executor summons an attack-indicator
scoreboard objectives add omegaflowey.attack.executor.rate dummy
# how many times an attack-executor will repeat its indicator-summoning behavior (ongoing-count)
scoreboard objectives add omegaflowey.attack.executor.repeat.count.i dummy
# how many times an attack-executor will repeat its indicator-summoning behavior (total count)
scoreboard objectives add omegaflowey.attack.executor.repeat.count.total dummy
# how long (in ticks) an attack-executor will wait until repeating its indicator-summong behavior
scoreboard objectives add omegaflowey.attack.executor.repeat.delay dummy
# boolean flags used to mark various states of an attack
scoreboard objectives add omegaflowey.attack.flag dummy
scoreboard objectives add omegaflowey.attack.indicator.animation.index dummy
# delay (in ticks) before an attack-indicator begins summoning bullets
scoreboard objectives add omegaflowey.attack.indicator.clock.delay dummy
# length an attack-indicator will exist
scoreboard objectives add omegaflowey.attack.indicator.clock.length dummy
# radius (in blocks) at which to summon bullets around attack-indicator
scoreboard objectives add omegaflowey.attack.indicator.radius dummy
# how often (in ticks) an attack-indicator summons an attack-bullet
scoreboard objectives add omegaflowey.attack.indicator.rate dummy
# number of indicators left to summon in a set
scoreboard objectives add omegaflowey.attack.indicator.remaining dummy
# total number of indicators an attack-executor will summon
scoreboard objectives add omegaflowey.attack.indicator.total dummy
scoreboard objectives add omegaflowey.attack.indicator.yaw dummy
scoreboard objectives add omegaflowey.attack.theta dummy
scoreboard objectives add omegaflowey.attack.phi dummy
scoreboard objectives add omegaflowey.attack.d-phi dummy
scoreboard objectives add omegaflowey.attack.position.x dummy
scoreboard objectives add omegaflowey.attack.position.y dummy
scoreboard objectives add omegaflowey.attack.position.z dummy
scoreboard objectives add omegaflowey.attack.speed.x dummy
scoreboard objectives add omegaflowey.attack.speed.y dummy
scoreboard objectives add omegaflowey.attack.speed.z dummy
scoreboard objectives add omegaflowey.attack.velocity dummy
# the weight of an attack during the `random` attack's RNG
scoreboard objectives add omegaflowey.attack.weight dummy

scoreboard objectives add omegaflowey.boss-fight.attack.clock.i dummy
# total duration (in ticks) of the attack phase
scoreboard objectives add omegaflowey.boss-fight.attack.clock.total dummy
# delay (in ticks) between an attack ending and the next one starting
scoreboard objectives add omegaflowey.boss-fight.attack.delay dummy
# index of the attack phase
scoreboard objectives add omegaflowey.boss-fight.attack.phase.i dummy
# total number of attack phases before we wrap the index
scoreboard objectives add omegaflowey.boss-fight.attack.phase.total dummy
scoreboard objectives add omegaflowey.boss-fight.cutscene.clock.i dummy
# total duration (in ticks) of the cutscene phase
scoreboard objectives add omegaflowey.boss-fight.cutscene.clock.total dummy
# index of the cutscene phase
scoreboard objectives add omegaflowey.boss-fight.cutscene.phase.i dummy
# total number of cutscene phases in the boss fight
scoreboard objectives add omegaflowey.boss-fight.cutscene.phase.total dummy
# boolean flags used to mark various states of the boss fight
scoreboard objectives add omegaflowey.boss-fight.flag dummy
scoreboard objectives add omegaflowey.boss-fight.progress.clock.i dummy
# total duration (in ticks) of the progress phase
scoreboard objectives add omegaflowey.boss-fight.progress.clock.total dummy
# index of the progress phase
scoreboard objectives add omegaflowey.boss-fight.progress.phase.i dummy
# total number of progress phases in the boss fight
scoreboard objectives add omegaflowey.boss-fight.progress.phase.total dummy
scoreboard objectives add omegaflowey.boss-fight.warn.clock.i dummy
scoreboard objectives add omegaflowey.boss-fight.warn.clock.total dummy

scoreboard objectives add omegaflowey.decorative.clock.i dummy

scoreboard objectives add omegaflowey.global.flag dummy

scoreboard objectives add omegaflowey.group.id dummy
scoreboard objectives add omegaflowey.group.id.tree.level dummy

scoreboard objectives add omegaflowey.math.0 dummy
scoreboard objectives add omegaflowey.math.1 dummy
scoreboard objectives add omegaflowey.math.2 dummy
scoreboard objectives add omegaflowey.math.bool dummy
scoreboard objectives add omegaflowey.math.const dummy
scoreboard objectives add omegaflowey.math.trials dummy

scoreboard objectives add omegaflowey.music.clock.i dummy
scoreboard objectives add omegaflowey.music.clock.total dummy

scoreboard objectives add omegaflowey.player.deaths.current deathCount
scoreboard objectives add omegaflowey.player.deaths.previous dummy
scoreboard objectives add omegaflowey.player.flag dummy
scoreboard objectives add omegaflowey.player.leave.current minecraft.custom:minecraft.leave_game
scoreboard objectives add omegaflowey.player.leave.previous dummy
scoreboard objectives add omegaflowey.player.health health
scoreboard objectives add omegaflowey.player.shake.pitch dummy
scoreboard objectives add omegaflowey.player.shake.yaw dummy
scoreboard objectives add omegaflowey.player.telemetry.id dummy
scoreboard objectives add omegaflowey.player.telemetry.trigger.disable trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.enable trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.help trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.new_page.booth trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.new_page.bossfight trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.pop.booth trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.pop.bossfight trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.show.booth trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.show.bossfight trigger
scoreboard objectives add omegaflowey.player.telemetry.trigger.stats trigger
scoreboard objectives add omegaflowey.player.trigger.bossfight.confirm trigger
scoreboard objectives add omegaflowey.player.trigger.bossfight.deny trigger

# x/z spans of the bullet grid
scoreboard objectives add omegaflowey.soul.bullet.position.dx dummy
scoreboard objectives add omegaflowey.soul.bullet.position.dz dummy
# x start/end points of the bullet grid
scoreboard objectives add omegaflowey.soul.bullet.position.x dummy
scoreboard objectives add omegaflowey.soul.bullet.position.x.end dummy
# y position of a bullet in the bullet grid
scoreboard objectives add omegaflowey.soul.bullet.position.y dummy
# yaw bullets will summon at
scoreboard objectives add omegaflowey.soul.bullet.position.yaw dummy
# z start/end points of the bullet grid
scoreboard objectives add omegaflowey.soul.bullet.position.z dummy
scoreboard objectives add omegaflowey.soul.bullet.position.z.end dummy
scoreboard objectives add omegaflowey.soul.clock.animation dummy
scoreboard objectives add omegaflowey.soul.clock.i dummy
# used as a reference score for when the player touches the ACT button
scoreboard objectives add omegaflowey.soul.clock.touched_act_button dummy
# length an soul-executor will exist (length this soul event will last if the act button is never touched)
scoreboard objectives add omegaflowey.soul.executor.clock.length dummy
# stored x position of a healer entity
scoreboard objectives add omegaflowey.soul.healer.position.x dummy
# stored z position of a healer entity
scoreboard objectives add omegaflowey.soul.healer.position.z dummy
# cumulative number of bullets an indicator has summoned so far
scoreboard objectives add omegaflowey.soul.indicator.bullets.cumulative-total dummy
# number of bullets left to summon in a set
scoreboard objectives add omegaflowey.soul.indicator.bullets.remaining dummy
scoreboard objectives add omegaflowey.soul.indicator.bullets.total dummy
# boolean flags used to mark state changes during soul events
scoreboard objectives add omegaflowey.soul.flag dummy

# the final yaw an entity has after running bounce calculations
scoreboard objectives add omegaflowey.util.bounce.yaw dummy
# the initial yaw an entity starts with before running bounce calculations
scoreboard objectives add omegaflowey.util.bounce.yaw.initial dummy

## DEPRECATED
scoreboard objectives add omegaflowey.player.summit.has_died_to_flowey dummy
scoreboard objectives add omegaflowey.player.summit.has_fought_flowey dummy
scoreboard objectives add omegaflowey.player.summit.has_finished_parkour dummy
scoreboard objectives add omegaflowey.player.summit.has_joined_queue_before dummy
scoreboard objectives add omegaflowey.player.summit.has_survived_flowey dummy
scoreboard objectives add omegaflowey.player.summit.has_visited_booth dummy
