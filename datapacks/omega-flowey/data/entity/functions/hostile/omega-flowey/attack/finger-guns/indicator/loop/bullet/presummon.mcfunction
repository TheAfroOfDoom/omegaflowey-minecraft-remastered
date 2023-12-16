# Bullet summoning setup
execute store result storage attack:finger-guns x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:finger-guns z double 0.1 run scoreboard players get @s attack.position.z

# Terminate associated laser
function entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/terminate

# Summon bullet
function entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/bullet/summon with storage attack:finger-guns
