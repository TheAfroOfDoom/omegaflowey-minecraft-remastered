# Decrement attack.delay
execute if score @s omegaflowey.boss-fight.attack.delay matches 0.. run scoreboard players remove @s omegaflowey.boss-fight.attack.delay 1
execute if score @s omegaflowey.boss-fight.attack.delay matches 0.. run return 0

# Start new attack after delay
$execute unless entity @s[tag=boss_fight.is_attacking] run $(command)
