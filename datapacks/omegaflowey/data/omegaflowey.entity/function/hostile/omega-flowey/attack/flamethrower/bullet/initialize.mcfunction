function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add flamethrower
tag @s add is_falling

data modify entity @s CustomName set value '"Flamethrower Bullet"'
execute on passengers if entity @s[tag=aj.omegaflowey_flamethrower_fire.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

# Set scores
scoreboard players set @s omegaflowey.attack.clock.i -1

# Initialize physics scores
scoreboard players set @s omegaflowey.attack.velocity 100
