scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:upper_eye/on_summon/as_rig_entities
execute if entity @s[tag=aj.upper_eye.bone] run function #animated_java:upper_eye/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.upper_eye.locator_origin] run function animated_java:upper_eye/zzzzzzzz/summon/as_locator_origins
