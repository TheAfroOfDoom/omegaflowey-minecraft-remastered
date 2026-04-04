# Set scores
# TODO(49): determine how to control how long we wait after this attack finishes before
# letting boss fight start a new attack
scoreboard players set @s omegaflowey.boss-fight.attack.delay 80

# Remove tags
tag @s remove boss_fight.is_attacking
