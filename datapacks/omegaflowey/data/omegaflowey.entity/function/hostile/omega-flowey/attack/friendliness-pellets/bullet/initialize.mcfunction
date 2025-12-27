function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

data modify entity @s CustomName set value '"Friendliness-Pellets Bullet"'
execute on passengers if entity @s[tag=aj.omegaflowey_friendliness_pellet.bone] run \
  data merge entity @s { brightness: { block: 13, sky: 0 } }

# Add tags
tag @s add friendliness-pellets
tag @s add stationary

function gu:generate
