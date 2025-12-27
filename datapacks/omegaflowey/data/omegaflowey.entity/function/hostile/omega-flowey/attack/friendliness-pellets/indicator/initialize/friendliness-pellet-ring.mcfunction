function omegaflowey.entity:hostile/omega-flowey/attack/shared/initialize

data merge entity @s {CustomName:'"Friendliness Pellet Ring"'}
execute on passengers if entity @s[tag=aj.omegaflowey_friendliness_pellet_ring.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

# Add tags
tag @s add friendliness-pellets
tag @s add friendliness-pellet-ring

function gu:generate
