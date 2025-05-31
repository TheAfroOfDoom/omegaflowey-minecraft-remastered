# 1st rotate
execute if score @s omegaflowey.attack.clock.i matches 23..29 run stopsound @a hostile omega-flowey:attack.flamethrower.fire
execute if score @s omegaflowey.attack.clock.i matches 23..29 run playsound omega-flowey:attack.flamethrower.fire hostile @a ~ ~ ~ 5 0.85
execute if score @s omegaflowey.attack.clock.i matches 23..29 run teleport @s ~ ~ ~ ~7.142857143 ~
