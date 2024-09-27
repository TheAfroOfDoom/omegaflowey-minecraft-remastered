function entity:directorial/boss_fight/summit/origin/assert_exists
execute if score #omega-flowey.origin.error global.flag matches 1 run return fail

$execute positioned -177.5 67.0 62.5 rotated 180 0 run $(command)
