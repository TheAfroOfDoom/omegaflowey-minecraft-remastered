tag @s add upper_eye.left
# Store entity UUIDs for later (performant) reference
data modify storage omegaflowey:bossfight attack_upper_eye_left_uuid set from storage gu:main out
execute on passengers if entity @s[type=minecraft:marker, tag=aj.data] \
  run data modify storage omegaflowey:bossfight attack_upper_eye_left_locator_uuid set from entity @s data.locators.pupil.uuid
