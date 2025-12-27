function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Flamethrower Indicator"'
execute on passengers if entity @s[tag=aj.omegaflowey_flamethrower.bone] run \
  data merge entity @s { brightness: { block: 13, sky: 0 } }

# Add tags
tag @s add flamethrower

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run tag @s add is_right
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run tag @s add is_left

# Set scores
scoreboard players operation @s omegaflowey.attack.indicator.clock.length = #omegaflowey.attack.flamethrower omegaflowey.attack.executor.clock.length
