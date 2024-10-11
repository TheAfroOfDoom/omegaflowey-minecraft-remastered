## Set scores
# Length of the WARNING sound
scoreboard players set @s omegaflowey.boss-fight.warn.clock.total 6000
# Delay before WARNING sound starts playing/animating
# (2s of grace period where we stop starting attacks, but dont display WARNING yet)
scoreboard players set @s omegaflowey.boss-fight.warn.clock.i -41

# Add tags
tag @s add boss_fight.phase.warn
