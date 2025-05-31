function omegaflowey.main:telemetry/bossfight/tag/start { name: "attack.flamethrower" }

function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"Bomb Executor"'

# Set scores
scoreboard players operation @s omegaflowey.attack.executor.clock.length = #omegaflowey.attack.flamethrower omegaflowey.attack.executor.clock.length

# Add tags
tag @s add flamethrower

# Summon two indicators (flamethrowers) on left/right
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { command: \
  'execute positioned ^-13 ^ ^ run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/summon' \
}
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { command: \
  'execute positioned ^13 ^ ^ run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/summon' \
}
