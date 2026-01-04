tag @s add soul_2

# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -1

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.2 act_button_uuid set from storage gu:main out

# Update tags on locator children
function animated_java:omegaflowey_act_button/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_2/act_button/initialize/locator' \
}

# Randomize animation frame index so the rows of shoes aren't
# all tapping at the same animation index
execute store result score @s aj.omegaflowey_soul_2.frame run random value 0..26

# Start animation
function animated_java:omegaflowey_act_button/animations/omegaflowey_soul_2/resume
