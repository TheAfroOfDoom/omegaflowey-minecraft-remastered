scoreboard objectives add summit.wind.calc dummy
scoreboard objectives add summit.wind.data dummy
scoreboard objectives add summit.wind.timer dummy
scoreboard objectives add summit.wind.x dummy
scoreboard objectives add summit.wind.y dummy
scoreboard objectives add summit.wind.z dummy
scoreboard objectives add summit.wind.Ax dummy
scoreboard objectives add summit.wind.Ay dummy
scoreboard objectives add summit.wind.Az dummy
scoreboard objectives add summit.wind.Bx dummy
scoreboard objectives add summit.wind.By dummy
scoreboard objectives add summit.wind.Bz dummy
scoreboard objectives add summit.wind.Cx dummy
scoreboard objectives add summit.wind.Cy dummy
scoreboard objectives add summit.wind.Cz dummy
scoreboard objectives add summit.wind.Dx dummy
scoreboard objectives add summit.wind.Dy dummy
scoreboard objectives add summit.wind.Dz dummy
scoreboard objectives add summit.wind.nx dummy
scoreboard objectives add summit.wind.ny dummy
scoreboard objectives add summit.wind.nz dummy
scoreboard objectives add summit.wind.px dummy
scoreboard objectives add summit.wind.py dummy
scoreboard objectives add summit.wind.pz dummy
scoreboard objectives add summit.wind.p dummy
scoreboard objectives add summit.wind.nX dummy
scoreboard objectives add summit.wind.nY dummy
scoreboard objectives add summit.wind.nZ dummy
scoreboard objectives add summit.wind.vx dummy
scoreboard objectives add summit.wind.vy dummy
scoreboard objectives add summit.wind.vz dummy
scoreboard players set #-100 summit.wind.data -100
scoreboard players set #-10 summit.wind.data -10
scoreboard players set #-1 summit.wind.data -1
scoreboard players set #0 summit.wind.data 0
scoreboard players set #2 summit.wind.data 2
scoreboard players set #6 summit.wind.data 6
scoreboard players set #10 summit.wind.data 10
scoreboard players set #100 summit.wind.data 100
scoreboard players set #1000 summit.wind.data 1000
scoreboard players set #10000 summit.wind.data 10000
scoreboard players set #RAD2DEG summit.wind.data 57296
scoreboard players set #DEG2RAD summit.wind.data 17
scoreboard players set radius summit.wind.data 300
forceload add 0 0
kill @e[type=marker, tag=summit.wind.compute]
summon item_display 0.0 0.0 0.0 {UUID: [I; 0, 0, 0, 0], Tags: ["summit.wind.compute"]}
schedule function summit.wind:main 1 replace
