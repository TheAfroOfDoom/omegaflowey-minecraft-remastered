## summons a single bullet and increments `attack.bullets.count`

# Summon and initialize bullet
$execute positioned ~ ~1 ~ positioned ^ ^ ^$(radius) rotated $(bullet_yaw) 0 run \
  function animated_java:friendliness_pellet/summon { args: { animation: "spin", start_animation: true } }
execute store result entity @s data.bullet_idx int 1 run scoreboard players get @s attack.bullets.count
function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/summon_bullet/store_bullet_uuid \
  with entity @s data

# Rotate yaw to be ready for next bullet
$teleport @s ~ ~ ~ ~$(yaw_delta) ~

# Increment number of bullets that have been summoned so far
scoreboard players add @s attack.bullets.count 1
