## Reflects an entity's facing direction (yaw only) against the walls of a specified bounding box
# i.e. (flips x-direction/z-direction as necessary)
# ---
# params:
# * x_negative_x: x coordinate for the bounding box's safe region outside of the -X wall
# * x_negative_dx: x width for the bounding box's safe region outside of the -X wall
# * x_positive_x: x coordinate for the bounding box's safe region outside of the +X wall
# * x_positive_dx: x width for the bounding box's safe region outside of the +X wall
# * y/dy: generous y lower-bound + height for each bounding box
#   (y/dy need to be generous because of target selectors being janky with volume selections)

# TODO(42): adjust arena bounds based on new animated java model (visually, it clips into the wall right now)

# Save initial yaw
execute store result score @s util.bounce.yaw.initial run data get entity @s Rotation[0]
scoreboard players operation @s util.bounce.yaw = @s util.bounce.yaw.initial

# -X wall
$execute unless entity @s[x=$(x_negative_x),dx=$(x_negative_dx),y=$(y),dy=$(dy),z=-1000,dz=2000] if entity @s[y_rotation=0..180] run function entity:utils/bounce/x_negative

# +X wall
$execute unless entity @s[x=$(x_positive_x),dx=$(x_positive_dx),y=$(y),dy=$(dy),z=-1000,dz=2000] if entity @s[y_rotation=-180..0] run function entity:utils/bounce/x_positive

# -Z wall
$execute unless entity @s[x=-25,dx=50,y=$(y),dy=$(dy),z=-3,dz=25] unless entity @s[y_rotation=-90..90] run function entity:utils/bounce/z_negative

# +Z wall
$execute unless entity @s[x=-1000,dx=2000,y=$(y),dy=$(dy),z=18,dz=-25] if entity @s[y_rotation=-90..90] run function entity:utils/bounce/z_positive

# Store bounced angle
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s util.bounce.yaw

# If `util.bounce.yaw != util.bounce.yaw.initial`, we bounced
$execute unless score @s util.bounce.yaw = @s util.bounce.yaw.initial run $(command_after_bouncing)
