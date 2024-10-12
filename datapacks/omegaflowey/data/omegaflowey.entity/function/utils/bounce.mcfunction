## Reflects an entity's facing direction (yaw only) against the walls of a specified bounding box
# i.e. (flips x-direction/z-direction as necessary)
# ---
# params:
# * x_negative_x: x coordinate for the bounding box's safe region outside of the -X wall
# * x_negative_dx: x width for the bounding box's safe region outside of the -X wall
# * x_positive_x: x coordinate for the bounding box's safe region outside of the +X wall
# * x_positive_dx: x width for the bounding box's safe region outside of the +X wall
# * z_negative_z: z coordinate for the bounding box's safe region outside of the -Z wall
# * z_negative_dz: z width for the bounding box's safe region outside of the -Z wall
# * z_positive_z: z coordinate for the bounding box's safe region outside of the +Z wall
# * z_positive_dz: z width for the bounding box's safe region outside of the +Z wall
# * y/dy: generous y lower-bound + height for each bounding box
#   (y/dy need to be generous because of target selectors being janky with volume selections)

# Save initial yaw
execute store result score @s omegaflowey.util.bounce.yaw.initial run data get entity @s Rotation[0]
scoreboard players operation @s omegaflowey.util.bounce.yaw = @s omegaflowey.util.bounce.yaw.initial

# -X wall
$execute unless entity @s[x=$(x_negative_x),dx=$(x_negative_dx),y=$(y),dy=$(dy),z=-1000,dz=2000] if entity @s[y_rotation=0..180] run function omegaflowey.entity:utils/bounce/x_negative

# +X wall
$execute unless entity @s[x=$(x_positive_x),dx=$(x_positive_dx),y=$(y),dy=$(dy),z=-1000,dz=2000] if entity @s[y_rotation=-180..0] run function omegaflowey.entity:utils/bounce/x_positive

# -Z wall
$execute unless entity @s[x=-1000,dx=2000,y=$(y),dy=$(dy),z=$(z_negative_z),dz=$(z_negative_dz)] unless entity @s[y_rotation=-90..90] run function omegaflowey.entity:utils/bounce/z_negative

# +Z wall
$execute unless entity @s[x=-1000,dx=2000,y=$(y),dy=$(dy),z=$(z_positive_z),dz=$(z_positive_dz)] if entity @s[y_rotation=-90..90] run function omegaflowey.entity:utils/bounce/z_positive

# Store bounced angle
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s omegaflowey.util.bounce.yaw

# If `omegaflowey.util.bounce.yaw != omegaflowey.util.bounce.yaw.initial`, we bounced
$execute unless score @s omegaflowey.util.bounce.yaw = @s omegaflowey.util.bounce.yaw.initial run $(command_after_bouncing)
