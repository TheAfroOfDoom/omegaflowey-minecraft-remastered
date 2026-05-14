execute if entity @s[tag=summit.team.canCreateNode] run return run dialog show @s summit.dev:node/create_node
tellraw @s {color: "red", text: "You aren't permitted to make nodes! Ask a Team Lead for assistance."}
kill @n[type=area_effect_cloud, tag=summit.nodeSpawner]
