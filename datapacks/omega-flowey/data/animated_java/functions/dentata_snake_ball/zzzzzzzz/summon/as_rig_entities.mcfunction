scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:dentata_snake_ball/on_summon/as_rig_entities
execute if entity @s[tag=aj.dentata_snake_ball.bone] run function #animated_java:dentata_snake_ball/zzzzzzzz/on_summon/as_bones

