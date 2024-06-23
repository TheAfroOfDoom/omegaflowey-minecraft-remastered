# Set scores
# TODO(49): determine how to control how long we wait until ceding control back to the boss fight director
# after an attack-executor stops looping
scoreboard players set @s boss-fight.attack.delay 20

# Remove tags
tag @s remove boss_fight.is_attacking
