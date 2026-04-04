# x: -14.00..+7.50
execute store result score @s omegaflowey.attack.position.x run random value -1400..750
execute if entity @s[tag=is_flipped] run scoreboard players operation @s omegaflowey.attack.position.x *= #omegaflowey.const.-1 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.position.x += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag

# z: +32.50
scoreboard players set @s omegaflowey.attack.position.z 3250
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag
