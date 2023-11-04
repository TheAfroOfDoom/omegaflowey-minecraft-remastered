scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:lower_eye/on_summon/as_rig_entities
execute if entity @s[tag=aj.lower_eye.bone] run function #animated_java:lower_eye/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.lower_eye.locator_origin] run function animated_java:lower_eye/zzzzzzzz/summon/as_locator_origins
