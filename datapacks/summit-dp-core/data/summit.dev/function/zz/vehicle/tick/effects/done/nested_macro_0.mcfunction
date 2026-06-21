data remove storage summit.vehicles:temp exit_triggers[0]
data modify storage summit.vehicles:temp v set from storage summit.vehicles:temp exit_triggers[0]
$$(v)
execute if data storage summit.vehicles:temp exit_triggers[] run function summit.dev:zz/vehicle/tick/effects/done with storage summit.vehicles:temp
