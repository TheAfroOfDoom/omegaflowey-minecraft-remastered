## summons a single bullet and decrements `omegaflowey.attack.bullets.remaining`

# omegaflowey.attack.bullets.remaining = number of bullets left to summon
# omegaflowey.attack.d-phi = angle between bullets
# omegaflowey.attack.phi = angle to summon bullet at
# omegaflowey.attack.theta = pitch to summon bullet at

# Toggle between dark-eye and bright-eye variants
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.bullets.remaining
scoreboard players operation @s omegaflowey.math.0 %= #2 omegaflowey.math.const
$execute if score @s omegaflowey.math.0 matches 0 as $(corresponding_root_uuid) run function animated_java:lower_eye/variants/dark/apply
$execute if score @s omegaflowey.math.0 matches 1 as $(corresponding_root_uuid) run function animated_java:lower_eye/variants/bright/apply

# Summon and initialize bullet
scoreboard players set #omegaflowey.attack.xbullets.type omegaflowey.global.flag 3
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run \
  function animated_java:projectile_star/summon { args: {} }
scoreboard players set #omegaflowey.attack.xbullets.type omegaflowey.global.flag 0

# Rotate yaw to be ready for next bullet
scoreboard players operation @s omegaflowey.attack.phi -= @s omegaflowey.attack.d-phi

# Decrement number of bullets left to summon
scoreboard players remove @s omegaflowey.attack.bullets.remaining 1
