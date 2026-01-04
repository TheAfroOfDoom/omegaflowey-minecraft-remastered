tag @s add soul_3

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.3 act_button_uuid set from storage gu:main out

# Update tags on locator children
function animated_java:omegaflowey_act_button/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_3/act_button/locator/initialize' \
}
