# Add tags
tag @s add can_move

# Store initial yaw as score
# (we don't store it to NBT because we want the entity's visible rotation to be independent from
# the direction it's moving in)
execute store result score @s omegaflowey.soul.bullet.position.yaw run data get storage omegaflowey:soul.0 yaw
