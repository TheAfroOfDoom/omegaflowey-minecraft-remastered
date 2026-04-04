# Add tags
tag @s add omega-flowey-remastered
tag @s add soul
tag @s add soul_5
tag @s add soul-bullet

execute on passengers if entity @s[tag=aj.omegaflowey_soul_5_bullet.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

# Face crosshair
$rotate @s facing entity $(next_crosshair_uuid)
execute at @s run rotate @s ~ 0
