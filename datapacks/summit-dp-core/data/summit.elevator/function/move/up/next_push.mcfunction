scoreboard players add @s summit.elevator.timer 1
scoreboard players operation $step summit.elevator.timer = @s summit.elevator.timer
scoreboard players operation $step summit.elevator.timer %= $up_phase summit.elevator.timer
execute if score $step summit.elevator.timer matches 2 run summon item_display ~ ~-3 ~ {Tags: ["summit.elevator.mover"], Passengers: [{id: "minecraft:shulker", Silent: 1b, Peek: 0b, DeathLootTable: "minecraft:empty", active_effects: [{id: "minecraft:invisibility", amplifier: 0, duration: -1, show_particles: 0b}, {id: "minecraft:resistance", amplifier: 10, duration: -1, show_particles: 0b}], NoAI: 1b, AttachFace: 0b, Tags: ["summit.elevator.mover"], attributes: [{id: "minecraft:scale", base: 3}]}]}
execute if score $step summit.elevator.timer matches 3 positioned ~ ~-4 ~ run tp @e[type=item_display, tag=summit.elevator.mover, distance=..0.5] ~ ~-10000 ~
execute if score $step summit.elevator.timer matches 8 positioned ~ ~-10004 ~ run kill @e[tag=summit.elevator.mover, distance=..1.5]
execute if score $step summit.elevator.timer matches 8 positioned ~-1 ~ ~-1 run scoreboard players operation @a[gamemode=!spectator, dx=1, dy=2, dz=1] summit.elevator.id = @s summit.elevator.id
execute if score $step summit.elevator.timer matches 8 positioned ~-1 ~ ~-1 run attribute @s minecraft:gravity base set 0.0
execute if score @s summit.elevator.timer matches 9 run function summit.elevator:move/up/structure with entity @s data.summit.elevator.chains
execute if score $step summit.elevator.timer matches 9 positioned ~ ~-3 ~ run data merge entity @n[type=shulker, tag=summit.elevator.mover, distance=..0.5] {Peek: 40b}
execute if score $step summit.elevator.timer matches 9 run tp ~ ~0.1 ~
execute if score $step summit.elevator.timer matches 10..11 run tp ~ ~0.05 ~
execute if score $step summit.elevator.timer matches 12 positioned ~ ~1 ~ run function summit.elevator:move/up/structure with entity @s data.summit.elevator.chains
execute if score $step summit.elevator.timer matches 13 positioned ~ ~1 ~ run function summit.elevator:move/up/chain_gap
execute if score $step summit.elevator.timer matches 12..13 run tp ~ ~0.1 ~
execute if score $step summit.elevator.timer matches 14..17 run tp ~ ~0.15 ~
execute if score $step summit.elevator.timer matches 18 run function summit.elevator:move/up/structure_stop with entity @s data.summit.elevator.chains
execute if score $step summit.elevator.timer matches 18 run scoreboard players operation #curr summit.elevator.id = @s summit.elevator.id
execute if score $step summit.elevator.timer matches 18 if entity @a[gamemode=!spectator, distance=..50, limit=1] store result storage summit:temp elevator.y float 0.01 run data get entity @s Pos[1] 100
execute if score $step summit.elevator.timer matches 18 as @a[gamemode=!spectator, distance=..50] at @s if score @s summit.elevator.id = #curr summit.elevator.id run function summit.elevator:move/up/tp with storage summit:temp elevator
execute if score $step summit.elevator.timer matches 18 as @a[gamemode=!spectator, distance=..50] if score @s summit.elevator.id = #curr summit.elevator.id positioned ~-1 ~ ~-1 unless entity @s[dx=1, dy=2, dz=1] run tp @s ~ ~0.2 ~
execute if score $step summit.elevator.timer matches 19 run scoreboard players add @s summit.elevator.height 1
execute if score $step summit.elevator.timer matches 19 store result score $max summit.elevator.height run data get entity @s data.summit.elevator.height 1
execute if score $step summit.elevator.timer matches 19 if score @s summit.elevator.height >= $max summit.elevator.height run function summit.elevator:move/finish with entity @s data.summit.elevator.chains
