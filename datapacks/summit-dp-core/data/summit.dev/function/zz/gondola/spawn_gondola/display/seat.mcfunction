tag @s add summit.gondola.seat
$tag @s add summit.gondola.$(kind)
data merge entity @s {teleport_duration: 4}
scoreboard players operation @s summit.temp = #gondola_id summit.id
