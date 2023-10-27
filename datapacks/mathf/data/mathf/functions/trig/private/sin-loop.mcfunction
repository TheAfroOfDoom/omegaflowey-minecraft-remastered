#> mathf:trig/private/sin-loop
# @within function mathf:trig/sin

scoreboard players add powerCount mathf.data 1
scoreboard players operation sinPower mathf.data *= temp mathf.data
scoreboard players operation sinPower mathf.data /= #1000 mathf.const

execute if score powerCount mathf.data matches 3 run scoreboard players operation angPow3 mathf.data = sinPower mathf.data
execute if score powerCount mathf.data matches 5 run scoreboard players operation angPow5 mathf.data = sinPower mathf.data
execute if score powerCount mathf.data matches 7 run scoreboard players operation angPow7 mathf.data = sinPower mathf.data
execute if score powerCount mathf.data matches 9 run scoreboard players operation angPow9 mathf.data = sinPower mathf.data

execute if score powerCount mathf.data matches ..8 run function mathf:trig/private/sin-loop
