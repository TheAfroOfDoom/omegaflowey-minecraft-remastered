scoreboard players add @s boss-fight.attack.clock.i 1

# Decrement attack.delay
execute if score @s boss-fight.attack.delay matches 0.. run scoreboard players remove @s boss-fight.attack.delay 1
execute if score @s boss-fight.attack.delay matches 0.. run return 0

# Start new attack after delay
execute unless entity @s[tag=boss_fight.is_attacking] run function entity:directorial/boss_fight/summit/phase/attack/loop/next_attack

# Terminate
execute if score @s boss-fight.attack.clock.i >= @s boss-fight.attack.clock.total run function entity:directorial/boss_fight/summit/phase/attack/terminate
