execute if entity @s[tag=!x-bullets-upper-weak] run \
  scoreboard players set #omegaflowey.attack.indicator.type omegaflowey.global.flag 1
execute if entity @s[tag= x-bullets-upper-weak] run \
  scoreboard players set #omegaflowey.attack.indicator.type omegaflowey.global.flag 2

# Summon indicators at each upper_eye pupil locators (2 total)
$execute as $(attack_upper_eye_right_uuid) run function aj:omegaflowey_upper_eye/at_locator { \
  name: 'pupil', \
  command: '\
    execute summon minecraft:marker run \
    function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize/right\
  ' \
}
$execute as $(attack_upper_eye_left_uuid) run function aj:omegaflowey_upper_eye/at_locator { \
  name: 'pupil', \
  command: '\
    execute summon minecraft:marker run \
    function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize/left\
  ' \
}

# Decrement number of indicators left to summon
scoreboard players remove @s omegaflowey.attack.indicator.remaining 1

scoreboard players set #omegaflowey.attack.indicator.type omegaflowey.global.flag 0
