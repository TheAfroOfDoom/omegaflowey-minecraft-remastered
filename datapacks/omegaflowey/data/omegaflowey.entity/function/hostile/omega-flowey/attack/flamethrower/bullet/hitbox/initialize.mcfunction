function omegaflowey.entity:hostile/omega-flowey/attack/shared/initialize
tag @s add flamethrower
tag @s add bullet-hitbox

# this width/height data is purely for debug visual purposes
data merge entity @s { width: 4.0, height: 0.625, response: false }
