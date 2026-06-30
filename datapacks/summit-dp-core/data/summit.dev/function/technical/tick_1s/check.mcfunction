data remove storage summit.vehicles:temp seats[-1]
$execute unless entity $(uuid) run data remove entity @s data.taken_seats[{x: $(x), y: $(y), z: $(z)}]
execute if data storage summit.vehicles:temp seats[] run function summit.dev:technical/tick_1s/check
