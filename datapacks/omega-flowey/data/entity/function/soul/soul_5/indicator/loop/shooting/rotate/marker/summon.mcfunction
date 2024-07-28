summon minecraft:marker ~ ~ ~ {Tags:["omega-flowey-remastered", "soul", "soul_5", "math-marker"]}
execute as @e[tag=math-marker,tag=soul_5] run function entity:soul/soul_5/indicator/loop/shooting/rotate/marker/initialize with storage soul:soul_5.indicator
