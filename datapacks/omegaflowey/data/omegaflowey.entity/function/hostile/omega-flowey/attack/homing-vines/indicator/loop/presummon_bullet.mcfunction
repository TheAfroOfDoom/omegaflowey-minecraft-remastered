# Bullet summoning setup
execute store result storage attack:homing-vines x float 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:homing-vines y float 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:homing-vines z float 0.01 run scoreboard players get @s attack.position.z

# Summon bullet
execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/indicator/loop/presummon_bullet/face_player_location with storage attack:homing-vines
