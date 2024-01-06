scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:finger_gun_bullet/on_summon/as_rig_entities
execute if entity @s[tag=aj.finger_gun_bullet.bone] run function #animated_java:finger_gun_bullet/zzzzzzzz/on_summon/as_bones

