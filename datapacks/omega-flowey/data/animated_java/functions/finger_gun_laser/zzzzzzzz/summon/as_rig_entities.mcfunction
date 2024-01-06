scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:finger_gun_laser/on_summon/as_rig_entities
execute if entity @s[tag=aj.finger_gun_laser.bone] run function #animated_java:finger_gun_laser/zzzzzzzz/on_summon/as_bones

