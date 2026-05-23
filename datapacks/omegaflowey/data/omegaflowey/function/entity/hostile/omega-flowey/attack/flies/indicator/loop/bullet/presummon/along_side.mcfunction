# z: -15.00
scoreboard players set @s omegaflowey.attack.position.z -1500
execute if entity @s[tag=is_flipped] run scoreboard players operation @s omegaflowey.attack.position.z *= #omegaflowey.const.-1 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag

# x: +8.50..+31.50
execute store result score @s omegaflowey.attack.position.x run random value 850..3150
scoreboard players operation @s omegaflowey.attack.position.x += #omegaflowey.bossfight.summit.origin.x omegaflowey.global.flag
