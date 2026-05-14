execute if items entity @s weapon.mainhand minecraft:pig_spawn_egg[minecraft:custom_data={id: "node_creator"}] at @n[type=area_effect_cloud, tag=summit.nodeSpawner] run function summit.dev:dialog/create_node
scoreboard players reset @s summit.dev.usedPigEgg
