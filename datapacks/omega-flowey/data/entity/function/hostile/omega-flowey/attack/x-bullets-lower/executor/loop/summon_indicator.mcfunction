# Summon and initialize attack-indicators at each lower_eye pupil locators (2 total)
execute at @e[tag=aj.lower_eye.locator.pupil] summon minecraft:marker run \
  function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize

# Decrement number of indicators left to summon
scoreboard players remove @s attack.indicator.remaining 1
