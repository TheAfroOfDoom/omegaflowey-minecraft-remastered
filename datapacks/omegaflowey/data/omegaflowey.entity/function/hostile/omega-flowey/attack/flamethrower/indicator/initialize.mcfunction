function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Bomb Indicator"'

# Add tags
tag @s add flamethrower

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run tag @s add is_right

# Set scores
scoreboard players operation @s omegaflowey.attack.indicator.clock.length = #omegaflowey.attack.flamethrower omegaflowey.attack.executor.clock.length

data merge entity @s { block_state: { Name: "minecraft:red_wool" } }
