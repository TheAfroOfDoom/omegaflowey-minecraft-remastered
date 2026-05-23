# Split on phase score
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 0 run function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/loop/next_attack/0
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 1 run function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/loop/next_attack/1
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 2 run function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/loop/next_attack/2

# Add tag
tag @s add boss_fight.is_attacking
