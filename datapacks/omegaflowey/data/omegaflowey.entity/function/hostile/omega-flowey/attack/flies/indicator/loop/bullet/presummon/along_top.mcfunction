# x: +/- 14.00
execute store result score @s omegaflowey.attack.position.x run random value -1400..1400
scoreboard players operation @s omegaflowey.attack.position.x += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag

# z: +7.50
scoreboard players set @s omegaflowey.attack.position.z 750
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag
