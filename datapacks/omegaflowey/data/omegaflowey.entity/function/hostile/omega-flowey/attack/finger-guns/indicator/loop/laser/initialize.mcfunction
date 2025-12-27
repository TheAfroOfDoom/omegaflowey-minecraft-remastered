function omegaflowey.entity:hostile/omega-flowey/attack/shared/initialize

data modify entity @s CustomName set value '"Finger-Guns Laser"'
execute on passengers if entity @s[tag=aj.omegaflowey_finger_gun_laser.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

# Play laser sound (blink) once
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:attack.finger-guns.laser hostile @s ~ ~ ~ 5 1 1' \
}

# Add tags
tag @s add finger-guns
tag @s add finger-guns-laser

function gu:generate
