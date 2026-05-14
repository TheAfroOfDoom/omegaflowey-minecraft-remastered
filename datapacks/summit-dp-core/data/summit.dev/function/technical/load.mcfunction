scoreboard objectives add summit.temp dummy
scoreboard objectives add summit.id dummy
scoreboard objectives add summit.dev.nodeID dummy
scoreboard objectives add summit.dev.usedPigEgg minecraft.used:minecraft.pig_spawn_egg
scoreboard objectives add summit.commands.dummy dummy
scoreboard players set #256 summit.temp 256
execute unless score #nodeCounter summit.temp matches 0.. run scoreboard players set #nodeCounter summit.temp 0
schedule function summit.dev:technical/tick 1 replace
schedule function summit.dev:technical/tick_2t 1 replace
schedule function summit.dev:technical/tick_1s 2 replace
