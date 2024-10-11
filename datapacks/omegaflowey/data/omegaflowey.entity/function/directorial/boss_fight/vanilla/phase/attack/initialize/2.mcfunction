## Set scores
# Length of phase (up to the WARNING sound)
scoreboard players set @s boss-fight.attack.clock.total 320
# delay before starting first attack
scoreboard players set @s boss-fight.attack.delay 7

# Setup music-repeating infrastructure
function omegaflowey.entity:directorial/boss_fight/music/initialize/boss_fight_vanilla_attack_phase_repeat_0
