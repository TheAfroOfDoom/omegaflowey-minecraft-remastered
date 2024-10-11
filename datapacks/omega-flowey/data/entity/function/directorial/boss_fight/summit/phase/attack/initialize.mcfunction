# Split on phase score
execute if score @s boss-fight.attack.phase.i matches 0 run function entity:directorial/boss_fight/summit/phase/attack/initialize/0
execute if score @s boss-fight.attack.phase.i matches 1 run function entity:directorial/boss_fight/summit/phase/attack/initialize/1
scoreboard players set @s boss-fight.attack.clock.total 60

# Set scores
scoreboard players set @s boss-fight.attack.clock.i -1

# Reset attack delay so a prior attack phase's delay doesn't make the next (current)
# attack phase have a weird delay at the beginning
scoreboard players set @s boss-fight.attack.delay -1

# Add tags
tag @s add boss_fight.phase.attack
