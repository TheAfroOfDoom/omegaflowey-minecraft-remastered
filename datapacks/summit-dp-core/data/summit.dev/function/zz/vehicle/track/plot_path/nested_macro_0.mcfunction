tag @s add summit.vehicles.plotter
data merge entity @s {data: {current: 0}}
data modify entity @s data.track set from storage summit.vehicles:temp track
data modify entity @s data.speed set from storage summit.vehicles:temp speed
function summit.dev:zz/vehicle/track/plot/particles
