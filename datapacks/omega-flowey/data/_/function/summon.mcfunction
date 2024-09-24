function entity:hostile/omega-flowey/summon/remove_preexisting_models
function entity:directorial/boss_fight/summit/origin/at { \
  command: "function entity:hostile/omega-flowey/summon/relative" \
}
execute if score #omega-flowey.origin.error global.flag matches 1 run return fail
function entity:hostile/omega-flowey/animate
