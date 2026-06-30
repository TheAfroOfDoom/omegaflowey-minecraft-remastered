data modify storage summit.vehicles:temp seats set from entity @s data.taken_seats
execute if data storage summit.vehicles:temp seats[] run function summit.dev:technical/tick_1s/check with storage summit.vehicles:temp seats[-1]
