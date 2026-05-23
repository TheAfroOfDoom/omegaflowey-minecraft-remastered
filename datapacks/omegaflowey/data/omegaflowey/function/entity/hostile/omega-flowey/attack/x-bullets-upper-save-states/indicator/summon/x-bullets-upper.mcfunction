# Summon indicators at each upper_eye pupil locators (2 total)
$execute as $(attack_upper_eye_right_uuid) run function aj:omegaflowey_upper_eye/at_locator { \
  name: 'pupil', \
  command: '\
    execute summon minecraft:marker run \
    function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/x-bullets-upper/raw/right\
  ' \
}
$execute as $(attack_upper_eye_left_uuid) run function aj:omegaflowey_upper_eye/at_locator { \
  name: 'pupil', \
  command: '\
    execute summon minecraft:marker run \
    function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/x-bullets-upper/raw/left\
  ' \
}

execute as @e[tag=attack-indicator-new] at @s run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/initialize/x-bullets-upper

scoreboard players remove @s omegaflowey.attack.indicator.remaining 1
