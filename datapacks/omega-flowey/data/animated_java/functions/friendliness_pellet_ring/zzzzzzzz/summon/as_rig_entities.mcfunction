scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:friendliness_pellet_ring/on_summon/as_rig_entities
execute if entity @s[tag=aj.friendliness_pellet_ring.bone] run function #animated_java:friendliness_pellet_ring/zzzzzzzz/on_summon/as_bones

