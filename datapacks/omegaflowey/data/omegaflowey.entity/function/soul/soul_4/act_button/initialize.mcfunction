tag @s add soul_4

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.4 act_button_uuid set from storage gu:main out

# Update tags on locator children
function animated_java:omegaflowey_act_button/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_4/act_button/locator/initialize' \
}

execute store result score @s omegaflowey.soul.velocity.y run \
  data get storage omegaflowey:soul.4 bullet_velocity_y 100
execute store result score @s omegaflowey.soul.velocity.z run \
  data get storage omegaflowey:soul.4 bullet_velocity_z 100
