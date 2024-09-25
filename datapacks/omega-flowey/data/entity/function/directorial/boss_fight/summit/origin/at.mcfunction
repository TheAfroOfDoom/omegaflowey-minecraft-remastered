function entity:directorial/boss_fight/summit/origin/assert_exists
execute if score #omega-flowey.origin.error global.flag matches 1 run return fail

$execute at @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin.boss_fight] rotated 180 0 run $(command)
