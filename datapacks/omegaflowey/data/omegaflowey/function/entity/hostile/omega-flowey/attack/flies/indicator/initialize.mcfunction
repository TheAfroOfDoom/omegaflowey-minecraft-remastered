function omegaflowey:entity/hostile/omega-flowey/attack/shared/indicator/initialize

tag @s add flies
data modify entity @s CustomName set value '"Flies Indicator"'

# Set scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #omegaflowey.attack.flies omegaflowey.attack.indicator.clock.delay

scoreboard players operation @s omegaflowey.attack.bullets.remaining = #omegaflowey.attack.flies omegaflowey.attack.bullets.total
scoreboard players operation @s omegaflowey.attack.indicator.rate = #omegaflowey.attack.flies omegaflowey.attack.indicator.rate

# Store if this is a flipped indicator (across z-axis) or not
execute store result score @s omegaflowey.math.0 run data get entity @s Pos[2] 100
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag
execute if score @s omegaflowey.math.0 matches ..0 run tag @s add is_flipped

function gu:generate
execute if entity @s[tag=is_flipped] run \
  data modify storage omegaflowey:attack.flies.flipped indicator_uuid set from storage gu:main out
execute if entity @s[tag=!is_flipped] run \
  data modify storage omegaflowey:attack.flies.nonflipped indicator_uuid set from storage gu:main out

scoreboard players set @s omegaflowey.attack.bullets.summoned 0
scoreboard players set @s omegaflowey.attack.bullets.terminated 0

# Play sound
function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:attack.flies.summon hostile @s ~ ~ ~ 5 1 1' \
}
