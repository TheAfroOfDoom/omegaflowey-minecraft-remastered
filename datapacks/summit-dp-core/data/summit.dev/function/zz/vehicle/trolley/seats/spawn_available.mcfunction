tag @s add summit.vehicle.seats_spawned
data modify storage summit.vehicles:temp parent set from entity @s data.uuid
execute unless data entity @s data.taken_seats[{x: 0.5d, y: 1, z: 1.5d}] positioned ^0.5 ^1 ^1.5 run function summit.dev:zz/vehicle/seats/spawn {x: 0.5d, y: 1, z: 1.5d}
execute unless data entity @s data.taken_seats[{x: 1.5d, y: 1, z: 1.5d}] positioned ^1.5 ^1 ^1.5 run function summit.dev:zz/vehicle/seats/spawn {x: 1.5d, y: 1, z: 1.5d}
execute unless data entity @s data.taken_seats[{x: 0.5d, y: 1, z: 3.4d}] positioned ^0.5 ^1 ^3.4 run function summit.dev:zz/vehicle/seats/spawn {x: 0.5d, y: 1, z: 3.4d}
execute unless data entity @s data.taken_seats[{x: 1.5d, y: 1, z: 3.4d}] positioned ^1.5 ^1 ^3.4 run function summit.dev:zz/vehicle/seats/spawn {x: 1.5d, y: 1, z: 3.4d}
execute unless data entity @s data.taken_seats[{x: -1.5d, y: 1, z: 0.0d}] positioned ^-1.5 ^1 ^ run function summit.dev:zz/vehicle/seats/spawn {x: -1.5d, y: 1, z: 0.0d}
execute unless data entity @s data.taken_seats[{x: -1.5d, y: 1, z: 1.0d}] positioned ^-1.5 ^1 ^1.0 run function summit.dev:zz/vehicle/seats/spawn {x: -1.5d, y: 1, z: 1.0d}
execute unless data entity @s data.taken_seats[{x: -1.5d, y: 1, z: 2.0d}] positioned ^-1.5 ^1 ^2.0 run function summit.dev:zz/vehicle/seats/spawn {x: -1.5d, y: 1, z: 2.0d}
execute unless data entity @s data.taken_seats[{x: -0.5d, y: 1, z: -1.5d}] positioned ^-0.5 ^1 ^-1.5 run function summit.dev:zz/vehicle/seats/spawn {x: -0.5d, y: 1, z: -1.5d}
execute unless data entity @s data.taken_seats[{x: -1.5d, y: 1, z: -1.5d}] positioned ^-1.5 ^1 ^-1.5 run function summit.dev:zz/vehicle/seats/spawn {x: -1.5d, y: 1, z: -1.5d}
execute unless data entity @s data.taken_seats[{x: -0.5d, y: 1, z: -3.4d}] positioned ^-0.5 ^1 ^-3.4 run function summit.dev:zz/vehicle/seats/spawn {x: -0.5d, y: 1, z: -3.4d}
execute unless data entity @s data.taken_seats[{x: -1.5d, y: 1, z: -3.4d}] positioned ^-1.5 ^1 ^-3.4 run function summit.dev:zz/vehicle/seats/spawn {x: -1.5d, y: 1, z: -3.4d}
execute unless data entity @s data.taken_seats[{x: 1.5d, y: 1, z: -0.0d}] positioned ^1.5 ^1 ^ run function summit.dev:zz/vehicle/seats/spawn {x: 1.5d, y: 1, z: -0.0d}
execute unless data entity @s data.taken_seats[{x: 1.5d, y: 1, z: -1.0d}] positioned ^1.5 ^1 ^-1.0 run function summit.dev:zz/vehicle/seats/spawn {x: 1.5d, y: 1, z: -1.0d}
execute unless data entity @s data.taken_seats[{x: 1.5d, y: 1, z: -2.0d}] positioned ^1.5 ^1 ^-2.0 run function summit.dev:zz/vehicle/seats/spawn {x: 1.5d, y: 1, z: -2.0d}
