# z: +/- 14.00
execute store result score @s omegaflowey.attack.position.z run random value -1400..1400
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag

# x: +7.50
scoreboard players set @s omegaflowey.attack.position.x 750
scoreboard players operation @s omegaflowey.attack.position.x += #omegaflowey.bossfight.summit.origin.x omegaflowey.global.flag
