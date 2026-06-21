tag @s remove summit.state.effects
data modify storage summit.vehicles:temp exit_triggers set from storage summit.vehicles:temp custom_data.exit_triggers
data modify storage summit.vehicles:temp v set from storage summit.vehicles:temp exit_triggers[0]
execute if data storage summit.vehicles:temp exit_triggers[] run function summit.dev:zz/vehicle/tick/effects/done/nested_macro_0 with storage summit.vehicles:temp {}
