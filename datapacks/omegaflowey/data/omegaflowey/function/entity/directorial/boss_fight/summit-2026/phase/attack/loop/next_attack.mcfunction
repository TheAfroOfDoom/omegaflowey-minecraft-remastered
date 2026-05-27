# Split on phase score
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 0 run function omegaflowey:entity/hostile/omega-flowey/attack/random/attack_phase/summit-2026/0
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 1 run function omegaflowey:entity/hostile/omega-flowey/attack/random/attack_phase/summit-2026/1
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 2 run function omegaflowey:entity/hostile/omega-flowey/attack/random/attack_phase/summit-2026/2

# Add tag
tag @s add boss_fight.is_attacking
