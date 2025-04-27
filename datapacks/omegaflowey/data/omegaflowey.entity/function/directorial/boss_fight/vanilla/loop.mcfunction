## Runs every tick off entities tagged `boss_fight.vanilla`

# Run loop logic based on what phase the boss_fight is in
execute if entity @s[tag=boss_fight.phase.attack] run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/loop
execute if entity @s[tag=boss_fight.phase.soul] run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop
execute if entity @s[tag=boss_fight.phase.warn] run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/warn/loop

# Run music-loop logic
execute if entity @s[tag=is_looping_music] run function omegaflowey.entity:directorial/boss_fight/music/loop
