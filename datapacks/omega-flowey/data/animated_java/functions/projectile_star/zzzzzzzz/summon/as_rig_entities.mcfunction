scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:projectile_star/on_summon/as_rig_entities
execute if entity @s[tag=aj.projectile_star.bone] run function #animated_java:projectile_star/zzzzzzzz/on_summon/as_bones

