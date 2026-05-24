execute store result score #gametime summit.temp run time query gametime
execute as @e[type=marker, tag=summit.vehicles.plotter] if score @s summit.temp = #gametime summit.temp run function summit.dev:zz/vehicle/track/plot/particles
