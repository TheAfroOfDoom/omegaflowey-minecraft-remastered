execute if entity @s[tag=aj.finger_gun_laser.root] run function animated_java:finger_gun_laser/zzzzzzzz/apply_variant/default/as_root
execute if entity @s[tag=!aj.finger_gun_laser.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:finger_gun_laser/apply_variant/default ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]