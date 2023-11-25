## Bounces the dentata-snake against the walls of the arena (flips x-direction/y-direction as necessary)

# Don't bounce if we've already escaped the arena (past top wall)
execute if entity @s[x=-1000,dx=2000,y=30,dy=10,z=-4,dz=-1000,tag=can-escape-arena] run return 0

# Save initial yaw
execute store result score @s math.0 run data get entity @s Rotation[0]
scoreboard players operation @s math.1 = @s math.0

# Left wall facing flowey
execute unless entity @s[x=-21,dx=50,y=30,dy=10,z=-1000,dz=2000] if entity @s[y_rotation=0..180] run scoreboard players operation @s math.0 *= #-1 mathf.const

# Right wall facing flowey
execute unless entity @s[x=21,dx=-50,y=30,dy=10,z=-1000,dz=2000] if entity @s[y_rotation=-180..0] run scoreboard players operation @s math.0 *= #-1 mathf.const

# Top wall facing flowey
# disable top-wall bouncing if has `can-escape-arena` tag
execute unless entity @s[x=-25,dx=50,y=30,dy=10,z=-3,dz=25] unless entity @s[y_rotation=-90..90] unless entity @s[tag=can-escape-arena] run scoreboard players operation @s math.0 -= #180 mathf.const
execute unless entity @s[x=-25,dx=50,y=30,dy=10,z=-3,dz=25] unless entity @s[y_rotation=-90..90] unless entity @s[tag=can-escape-arena] run scoreboard players operation @s math.0 *= #-1 mathf.const

# Bottom wall facing flowey
execute unless entity @s[x=-1000,dx=2000,y=30,dy=10,z=18,dz=-25] if entity @s[y_rotation=-90..90] run scoreboard players operation @s math.0 -= #180 mathf.const
execute unless entity @s[x=-1000,dx=2000,y=30,dy=10,z=18,dz=-25] if entity @s[y_rotation=-90..90] run scoreboard players operation @s math.0 *= #-1 mathf.const

# Store bounced angle
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s math.0

# If `math.0 != math.1`, we bounced
# If we bounced, play bounce sound
execute unless score @s math.0 = @s math.1 run playsound omega-flowey:attack.dentata-snakes.bounce hostile @a ~ ~ ~ 5 1
execute unless score @s math.0 = @s math.1 as @a unless entity @s[team=!player,team=!dead,team=!spectator] at @s run function entity:utils/shake_screen
