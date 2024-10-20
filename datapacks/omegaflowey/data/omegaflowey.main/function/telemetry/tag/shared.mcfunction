# relative gametime
execute store result score @s omegaflowey.math.0 run time query gametime
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.telemetry.basetime omegaflowey.global.flag
execute store result storage omegaflowey:telemetry tags[-1][-1].tick int 1 run scoreboard players get @s omegaflowey.math.0
