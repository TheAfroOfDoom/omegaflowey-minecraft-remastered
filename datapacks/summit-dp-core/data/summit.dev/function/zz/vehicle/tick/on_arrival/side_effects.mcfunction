data remove storage summit.vehicles:temp enter_triggers
data modify storage summit.vehicles:temp enter_triggers set from storage summit.vehicles:temp next_node.triggers.enter
data modify storage summit.vehicles:temp v set from storage summit.vehicles:temp enter_triggers[0]
execute if data storage summit.vehicles:temp enter_triggers[] run function summit.dev:zz/vehicle/tick/on_arrival/side_effects/nested_macro_0 with storage summit.vehicles:temp {}
data remove storage summit.vehicles:temp effects
data modify storage summit.vehicles:temp effects set from storage summit.vehicles:temp next_node.effects
data modify entity @s data.effects set from storage summit.vehicles:temp effects
scoreboard players set @s summit.vehicles.effect 0
scoreboard players set @s summit.vehicles.since_start 0
data remove storage summit.vehicles:temp exit_triggers
data modify storage summit.vehicles:temp exit_triggers set from storage summit.vehicles:temp next_node.triggers.exit
data modify entity @s data.exit_triggers set from storage summit.vehicles:temp exit_triggers
execute if data storage summit.vehicles:temp effects[] run return run tag @s add summit.state.effects
data modify storage summit.vehicles:temp v set from storage summit.vehicles:temp exit_triggers[0]
execute if data storage summit.vehicles:temp exit_triggers[] run function summit.dev:zz/vehicle/tick/on_arrival/side_effects/nested_macro_1 with storage summit.vehicles:temp {}
