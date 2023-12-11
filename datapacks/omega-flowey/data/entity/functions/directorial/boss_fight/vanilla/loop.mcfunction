## Runs every tick off entities tagged `boss_fight_vanilla`

# Run loop logic based on what phase the boss_fight is in
execute if entity @s[tag=boss_fight.phase.attack] run function entity:directorial/boss_fight/vanilla/phase/attack/loop
