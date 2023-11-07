scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:friendliness_pellet/on_summon/as_rig_entities
execute if entity @s[tag=aj.friendliness_pellet.bone] run function #animated_java:friendliness_pellet/zzzzzzzz/on_summon/as_bones

