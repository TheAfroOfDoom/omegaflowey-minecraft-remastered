# randomize which pan we will summon the act button at
execute store result score #omegaflowey.soul.4.act_button_pan_idx omegaflowey.soul.flag run \
  random value 0..3

scoreboard players set #omegaflowey.soul.4.current_pan_idx omegaflowey.soul.flag -1

execute positioned ^ ^9.0 ^34.7 rotated ~180 40 run function omegaflowey:entity/soul/soul_4/indicator/summon

execute positioned ^-13.5 ^9.0 ^6.3 rotated ~ 40 run function omegaflowey:entity/soul/soul_4/indicator/summon
execute positioned ^13.5 ^9.0 ^6.3 rotated ~ 40 run function omegaflowey:entity/soul/soul_4/indicator/summon
