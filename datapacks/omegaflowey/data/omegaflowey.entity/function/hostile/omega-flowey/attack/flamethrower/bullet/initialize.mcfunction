function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

tag @s add flamethrower
tag @s add is_falling

# Set scores
scoreboard players set @s omegaflowey.attack.clock.i -1

# Initialize physics scores
scoreboard players set @s omegaflowey.attack.velocity 100
