tag @s add summit.vehicle.seats_spawned
data modify storage summit.vehicles:temp parent set from entity @s data.uuid
execute unless data entity @s data.taken_seats[{x: -1.1d, y: 1, z: 1.1d}] positioned ^-1.1 ^1 ^1.1 run function summit.dev:zz/vehicle/seats/spawn {x: -1.1d, y: 1, z: 1.1d}
execute unless data entity @s data.taken_seats[{x: 0.0d, y: 1, z: 1.1d}] positioned ^ ^1 ^1.1 run function summit.dev:zz/vehicle/seats/spawn {x: 0.0d, y: 1, z: 1.1d}
execute unless data entity @s data.taken_seats[{x: 1.1d, y: 1, z: 1.1d}] positioned ^1.1 ^1 ^1.1 run function summit.dev:zz/vehicle/seats/spawn {x: 1.1d, y: 1, z: 1.1d}
execute unless data entity @s data.taken_seats[{x: 1.1d, y: 1, z: 0.0d}] positioned ^1.1 ^1 ^ run function summit.dev:zz/vehicle/seats/spawn {x: 1.1d, y: 1, z: 0.0d}
execute unless data entity @s data.taken_seats[{x: 1.1d, y: 1, z: -1.1d}] positioned ^1.1 ^1 ^-1.1 run function summit.dev:zz/vehicle/seats/spawn {x: 1.1d, y: 1, z: -1.1d}
execute unless data entity @s data.taken_seats[{x: -1.1d, y: 1, z: -1.1d}] positioned ^-1.1 ^1 ^-1.1 run function summit.dev:zz/vehicle/seats/spawn {x: -1.1d, y: 1, z: -1.1d}
execute unless data entity @s data.taken_seats[{x: 0.0d, y: 1, z: -1.1d}] positioned ^ ^1 ^-1.1 run function summit.dev:zz/vehicle/seats/spawn {x: 0.0d, y: 1, z: -1.1d}
execute unless data entity @s data.taken_seats[{x: -2.1d, y: 5, z: 2.1d}] positioned ^-2.1 ^5 ^2.1 run function summit.dev:zz/vehicle/seats/spawn {x: -2.1d, y: 5, z: 2.1d}
execute unless data entity @s data.taken_seats[{x: -1.0d, y: 5, z: 2.1d}] positioned ^-1.0 ^5 ^2.1 run function summit.dev:zz/vehicle/seats/spawn {x: -1.0d, y: 5, z: 2.1d}
execute unless data entity @s data.taken_seats[{x: 0.0d, y: 5, z: 2.1d}] positioned ^ ^5 ^2.1 run function summit.dev:zz/vehicle/seats/spawn {x: 0.0d, y: 5, z: 2.1d}
execute unless data entity @s data.taken_seats[{x: 1.0d, y: 5, z: 2.1d}] positioned ^1.0 ^5 ^2.1 run function summit.dev:zz/vehicle/seats/spawn {x: 1.0d, y: 5, z: 2.1d}
execute unless data entity @s data.taken_seats[{x: 2.1d, y: 5, z: 2.1d}] positioned ^2.1 ^5 ^2.1 run function summit.dev:zz/vehicle/seats/spawn {x: 2.1d, y: 5, z: 2.1d}
execute unless data entity @s data.taken_seats[{x: -2.1d, y: 5, z: -1.0d}] positioned ^-2.1 ^5 ^-1.0 run function summit.dev:zz/vehicle/seats/spawn {x: -2.1d, y: 5, z: -1.0d}
execute unless data entity @s data.taken_seats[{x: -2.1d, y: 5, z: 0.0d}] positioned ^-2.1 ^5 ^ run function summit.dev:zz/vehicle/seats/spawn {x: -2.1d, y: 5, z: 0.0d}
execute unless data entity @s data.taken_seats[{x: -2.1d, y: 5, z: 1.0d}] positioned ^-2.1 ^5 ^1.0 run function summit.dev:zz/vehicle/seats/spawn {x: -2.1d, y: 5, z: 1.0d}
execute unless data entity @s data.taken_seats[{x: -2.1d, y: 5, z: -2.1d}] positioned ^-2.1 ^5 ^-2.1 run function summit.dev:zz/vehicle/seats/spawn {x: -2.1d, y: 5, z: -2.1d}
execute unless data entity @s data.taken_seats[{x: -1.0d, y: 5, z: -2.1d}] positioned ^-1.0 ^5 ^-2.1 run function summit.dev:zz/vehicle/seats/spawn {x: -1.0d, y: 5, z: -2.1d}
execute unless data entity @s data.taken_seats[{x: 0.0d, y: 5, z: -2.1d}] positioned ^ ^5 ^-2.1 run function summit.dev:zz/vehicle/seats/spawn {x: 0.0d, y: 5, z: -2.1d}
execute unless data entity @s data.taken_seats[{x: 1.0d, y: 5, z: -2.1d}] positioned ^1.0 ^5 ^-2.1 run function summit.dev:zz/vehicle/seats/spawn {x: 1.0d, y: 5, z: -2.1d}
execute unless data entity @s data.taken_seats[{x: 2.1d, y: 5, z: -2.1d}] positioned ^2.1 ^5 ^-2.1 run function summit.dev:zz/vehicle/seats/spawn {x: 2.1d, y: 5, z: -2.1d}
