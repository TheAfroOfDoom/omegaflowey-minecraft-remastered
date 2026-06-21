kill @e[type=area_effect_cloud, tag=summit.wind.pos_2, distance=..50]
summon area_effect_cloud ~ ~ ~ {CustomName: "Collision Pos 2", Radius: 0.001f, Duration: 600, Tags: ["summit.wind.pos_2", "summit.wind.pos"], custom_particle: {type: "dust", color: [0.471d, 0.541d, 1.0d], scale: 1}}
