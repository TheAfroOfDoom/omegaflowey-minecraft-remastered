## Reflects an entity's facing direction (yaw only) against the walls of a specified bounding box
# i.e. (flips x-direction/z-direction as necessary)

# TODO(42): adjust arena bounds based on new animated java model (visually, it clips into the wall right now)

# Save initial yaw
execute store result score @s util.bounce.yaw.initial run data get entity @s Rotation[0]
scoreboard players operation @s util.bounce.yaw = @s util.bounce.yaw.initial

# -X wall
execute unless entity @s[x=-21,dx=50,y=30,dy=10,z=-1000,dz=2000] if entity @s[y_rotation=0..180] run function entity:utils/bounce/x_negative

# +X wall
execute unless entity @s[x=21,dx=-50,y=30,dy=10,z=-1000,dz=2000] if entity @s[y_rotation=-180..0] run function entity:utils/bounce/x_positive

# -Z wall
execute unless entity @s[x=-25,dx=50,y=30,dy=10,z=-3,dz=25] unless entity @s[y_rotation=-90..90] run function entity:utils/bounce/z_negative

# +Z wall
execute unless entity @s[x=-1000,dx=2000,y=30,dy=10,z=18,dz=-25] if entity @s[y_rotation=-90..90] run function entity:utils/bounce/z_positive

# Store bounced angle
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s util.bounce.yaw

# If `util.bounce.yaw != util.bounce.yaw.initial`, we bounced
$execute unless score @s util.bounce.yaw = @s util.bounce.yaw.initial run $(command_after_bouncing)
