# Split on phase score
execute if score @s boss-fight.attack.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/loop/next_attack/0
execute if score @s boss-fight.attack.phase.i matches 1 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/loop/next_attack/1
execute if score @s boss-fight.attack.phase.i matches 2 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/loop/next_attack/2
execute if score @s boss-fight.attack.phase.i matches 4 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/loop/next_attack/4

# Add tag
tag @s add boss_fight.is_attacking
