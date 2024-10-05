tag @s add soul_5
# TODO(132): this should not need to remove the `soul_0` tag; update the model file
# and logic in the soul_0 event to fix this
tag @s remove soul_0

# Copy to entity data for hitbox checks
data modify entity @s data.soul_act_button_uuid set from storage omegaflowey:bossfight soul_act_button_uuid
