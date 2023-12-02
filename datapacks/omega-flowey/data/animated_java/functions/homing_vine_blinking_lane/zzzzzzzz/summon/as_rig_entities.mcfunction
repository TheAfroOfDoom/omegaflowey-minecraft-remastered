scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:homing_vine_blinking_lane/on_summon/as_rig_entities
execute if entity @s[tag=aj.homing_vine_blinking_lane.bone] run function #animated_java:homing_vine_blinking_lane/zzzzzzzz/on_summon/as_bones

