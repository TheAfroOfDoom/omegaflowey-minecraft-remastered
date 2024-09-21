## Summons the boss fight marker and initializes it

# Kill any pre-existing boss fights
kill @e[tag=boss_fight]

# Summon and initialize boss fight director
summon minecraft:marker 0 33 0 { CustomName:'"Summit Boss Fight Director"', Tags:["omega-flowey-remastered","directorial","boss_fight","boss_fight_new","boss_fight_summit"] }
execute as @e[tag=boss_fight_new] at @s run function entity:directorial/boss_fight/summit/initialize
