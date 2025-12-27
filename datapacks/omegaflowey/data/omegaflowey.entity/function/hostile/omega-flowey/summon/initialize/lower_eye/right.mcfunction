tag @s add lower_eye.right
# Store entity UUIDs for later (performant) reference
data modify storage omegaflowey:bossfight attack_lower_eye_right_uuid set from storage gu:main out
execute on passengers if entity @s[type=minecraft:marker, tag=aj.global.data] \
  run data modify storage omegaflowey:bossfight attack_lower_eye_right_locator_uuid set from entity @s data.locators.pupil.uuid
