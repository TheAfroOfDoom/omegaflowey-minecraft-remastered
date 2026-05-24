fill ~-2 ~-1 ~-2 ~2 ~3 ~2 air replace #summit.elevator:elevator_block strict
$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) exposed_lightning_rod[facing=$(raise),powered=false] replace exposed_lightning_rod strict
$fill ~-1 ~ ~-1 ~1 $(y2) ~1 exposed_lightning_rod[facing=up,powered=false] replace exposed_lightning_rod strict
execute if block ~1 ~2 ~ air run setblock ~1 ~2 ~ oxidized_copper_chain[axis=z, waterlogged=false] strict
execute if block ~-1 ~2 ~ air run setblock ~-1 ~2 ~ oxidized_copper_chain[axis=z, waterlogged=false] strict
execute if block ~ ~2 ~1 air run setblock ~ ~2 ~1 oxidized_copper_chain[axis=x, waterlogged=false] strict
execute if block ~ ~2 ~-1 air run setblock ~ ~2 ~-1 oxidized_copper_chain[axis=x, waterlogged=false] strict
fill ~1 ~ ~1 ~1 ~2 ~1 oxidized_copper_chain[axis=y, waterlogged=false] strict
fill ~1 ~ ~-1 ~1 ~2 ~-1 oxidized_copper_chain[axis=y, waterlogged=false] strict
fill ~-1 ~ ~1 ~-1 ~2 ~1 oxidized_copper_chain[axis=y, waterlogged=false] strict
fill ~-1 ~ ~-1 ~-1 ~2 ~-1 oxidized_copper_chain[axis=y, waterlogged=false] strict
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 oxidized_copper_trapdoor[facing=south, half=top, open=false, powered=false, waterlogged=false] replace air strict
execute if block ~-2 ~-1 ~ air run setblock ~-2 ~-1 ~ oxidized_copper_trapdoor[facing=south, half=top, open=false, powered=false, waterlogged=false] strict
execute if block ~2 ~-1 ~ air run setblock ~2 ~-1 ~ oxidized_copper_trapdoor[facing=south, half=top, open=false, powered=false, waterlogged=false] strict
execute if block ~ ~-1 ~-2 air run setblock ~ ~-1 ~-2 oxidized_copper_trapdoor[facing=south, half=top, open=false, powered=false, waterlogged=false] strict
execute if block ~ ~-1 ~2 air run setblock ~ ~-1 ~2 oxidized_copper_trapdoor[facing=south, half=top, open=false, powered=false, waterlogged=false] strict
execute if block ~-2 ~ ~-1 air run setblock ~-2 ~ ~-1 oxidized_copper_trapdoor[facing=north, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~2 ~ ~1 air run setblock ~2 ~ ~1 oxidized_copper_trapdoor[facing=south, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~1 ~ ~-2 air run setblock ~1 ~ ~-2 oxidized_copper_trapdoor[facing=east, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~-1 ~ ~2 air run setblock ~-1 ~ ~2 oxidized_copper_trapdoor[facing=west, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~-2 ~ ~ oxidized_copper_trapdoor run setblock ~-2 ~ ~ air strict
execute if block ~2 ~ ~ oxidized_copper_trapdoor run setblock ~2 ~ ~ air strict
execute if block ~ ~ ~-2 oxidized_copper_trapdoor run setblock ~ ~ ~-2 air strict
execute if block ~ ~ ~2 oxidized_copper_trapdoor run setblock ~ ~ ~2 air strict
execute if block ~1 ~ ~2 air run setblock ~1 ~ ~2 oxidized_copper_trapdoor[facing=south, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~-2 ~ ~1 air run setblock ~-2 ~ ~1 oxidized_copper_trapdoor[facing=west, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~2 ~ ~-1 air run setblock ~2 ~ ~-1 oxidized_copper_trapdoor[facing=east, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~-1 ~ ~-2 air run setblock ~-1 ~ ~-2 oxidized_copper_trapdoor[facing=north, half=bottom, open=true, powered=false, waterlogged=false] strict
execute if block ~1 ~ ~1 oxidized_copper_chain run setblock ~1 ~ ~1 oxidized_copper_bars[east=true, north=false, south=true, west=false, waterlogged=false] strict
execute if block ~-1 ~ ~1 oxidized_copper_chain run setblock ~-1 ~ ~1 oxidized_copper_bars[east=false, north=false, south=true, west=true, waterlogged=false] strict
execute if block ~1 ~ ~-1 oxidized_copper_chain run setblock ~1 ~ ~-1 oxidized_copper_bars[east=true, north=true, south=false, west=false, waterlogged=false] strict
execute if block ~-1 ~ ~-1 oxidized_copper_chain run setblock ~-1 ~ ~-1 oxidized_copper_bars[east=false, north=true, south=false, west=true, waterlogged=false] strict
tag @s[tag=summit.elevator.moving_up] add summit.elevator.raised
tag @s[tag=summit.elevator.moving_down] remove summit.elevator.raised
scoreboard players operation #curr summit.elevator.id = @s summit.elevator.id
execute as @a[scores={summit.elevator.id=1..}] if score @s summit.elevator.id = #curr summit.elevator.id run attribute @s minecraft:gravity base reset
execute as @a[scores={summit.elevator.id=1..}] if score @s summit.elevator.id = #curr summit.elevator.id run scoreboard players reset @s summit.elevator.id
tag @s remove summit.elevator.moving_up
tag @s remove summit.elevator.moving_down
scoreboard players set @s summit.elevator.timer 0
execute store result score @s summit.elevator.cooldown run random value 5..20
execute positioned ~ ~-4 ~ run tp @e[type=item_display, tag=summit.elevator.mover, distance=..3] ~ ~-10000 ~
execute positioned ~ ~-10004 ~ run kill @e[tag=summit.elevator.mover, distance=..3]
data merge entity @s {item: {id: "minecraft:diamond", count: 1, components: {"minecraft:item_model": "summit_transport:elevator/4_open"}}}
