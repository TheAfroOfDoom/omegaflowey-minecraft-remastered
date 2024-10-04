# Summon indicators at each upper_eye pupil locators (2 total)
execute at @e[tag=aj.upper_eye.locator.pupil] summon minecraft:marker run \
  function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize

# Decrement number of indicators left to summon
scoreboard players remove @s attack.indicator.remaining 1
