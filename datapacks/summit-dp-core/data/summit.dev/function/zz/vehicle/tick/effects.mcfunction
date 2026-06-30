execute unless data entity @s data.effects[] run return run function summit.dev:zz/vehicle/tick/effects/done
scoreboard players add @s summit.vehicles.since_start 1
data modify storage summit.vehicles:temp effect set from storage summit.vehicles:temp custom_data.effects[0]
scoreboard players set #done summit.temp 0
execute store result score #success summit.temp run function summit.dev:zz/vehicle/tick/effects/nested_macro_0 with storage summit.vehicles:temp effect
execute if score #success summit.temp matches 0 run return 0
data remove entity @s data.effects[0]
execute if score #done summit.temp matches 1.. run data modify entity @s data.effects set value []
