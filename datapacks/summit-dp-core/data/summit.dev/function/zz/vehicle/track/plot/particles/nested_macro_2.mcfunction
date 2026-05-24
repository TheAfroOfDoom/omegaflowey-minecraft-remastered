$particle minecraft:trail{color: [0, 1, 0], duration: $(speed), target: [$(nx), $(ny), $(nz)]} $(cx) $(cy) $(cz) 0.2 0.2 0.2 1 100
$execute store result score @s summit.temp run schedule function summit.dev:zz/vehicle/track/plot $(speed)
