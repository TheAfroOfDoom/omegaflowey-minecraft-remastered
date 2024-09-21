## Runs every tick off entities tagged `boss_fight_summit`

# Run loop logic based on what phase the boss_fight is in
execute if entity @s[tag=boss_fight.phase.attack] run function entity:directorial/boss_fight/summit/phase/attack/loop
execute if entity @s[tag=boss_fight.phase.soul] run function entity:directorial/boss_fight/summit/phase/soul/loop
execute if entity @s[tag=boss_fight.phase.warn] run function entity:directorial/boss_fight/summit/phase/warn/loop

# Run music-loop logic
execute if entity @s[tag=is_looping_music] run function entity:directorial/boss_fight/music/loop
