function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data merge entity @s { CustomName: '"Finger-Guns Indicator"', teleport_duration: 0 }

# Set scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #attack-finger-guns omegaflowey.attack.indicator.clock.delay

scoreboard players operation @s omegaflowey.attack.indicator.clock.length = #attack-finger-guns omegaflowey.attack.indicator.clock.length

# Add tags
tag @s add finger-guns
