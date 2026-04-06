execute if entity @s[tag=!x-bullets-lower-weak] run \
  scoreboard players set #omegaflowey.attack.indicator.type omegaflowey.global.flag 1
execute if entity @s[tag= x-bullets-lower-weak] run \
  scoreboard players set #omegaflowey.attack.indicator.type omegaflowey.global.flag 2

# Summon and initialize attack-indicators at each lower_eye pupil locators (2 total)
$execute at $(attack_lower_eye_right_locator_uuid) summon minecraft:marker run \
  function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize/right
$execute at $(attack_lower_eye_left_locator_uuid) summon minecraft:marker run \
  function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize/left

# Decrement number of indicators left to summon
scoreboard players remove @s omegaflowey.attack.indicator.remaining 1

scoreboard players set #omegaflowey.attack.indicator.type omegaflowey.global.flag 0
