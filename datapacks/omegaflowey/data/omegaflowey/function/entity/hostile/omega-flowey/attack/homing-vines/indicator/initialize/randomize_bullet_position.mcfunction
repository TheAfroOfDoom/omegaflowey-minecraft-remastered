# z: arena center; dz in [-17..-8] or [8..17]
# Randomize delta-z-position to summon bullet at (z: arena center, dz: [-17.00..17.00])
# TODO(41): validate this dz range
execute store result score @s omegaflowey.attack.position.z run random value 800..1700
execute store result score @s omegaflowey.math.bool run random value 0..1
execute if score @s omegaflowey.math.bool matches 1 run \
  scoreboard players operation @s omegaflowey.attack.position.z *= #omegaflowey.const.-1 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag

# Randomize y-position to summon bullet at
execute store result score @s omegaflowey.attack.position.y run random value -200..300
scoreboard players operation @s omegaflowey.attack.position.y += #omegaflowey.bossfight.summit.origin.y omegaflowey.global.flag

# Set x-position to summon bullet at
scoreboard players set @s omegaflowey.attack.position.x 850
scoreboard players operation @s omegaflowey.attack.position.x += #omegaflowey.bossfight.summit.origin.x omegaflowey.global.flag

execute store result storage omegaflowey:attack.homing-vines x float 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage omegaflowey:attack.homing-vines y float 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result storage omegaflowey:attack.homing-vines z float 0.01 run scoreboard players get @s omegaflowey.attack.position.z
