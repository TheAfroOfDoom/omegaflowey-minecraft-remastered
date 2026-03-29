tag @s add soul_4

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.4 act_button_uuid set from storage gu:main out

# track what direction this word will move
execute if score #omegaflowey.soul.4.summon_word_on_east omegaflowey.soul.flag matches 1 run \
  tag @s add is_east

# Update tags on locator children
function animated_java:omegaflowey_act_button/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_4/act_button/locator/initialize' \
}
