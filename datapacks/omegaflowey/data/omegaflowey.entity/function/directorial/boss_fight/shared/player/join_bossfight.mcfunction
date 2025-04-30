function omegaflowey.entity:directorial/boss_fight/shared/player/set_active_player

execute at @s run playsound omega-flowey:cutscene.intro.battle_start_end ambient @s ~ ~ ~ 5

# effect clear @s
effect give @s minecraft:blindness 5 0 true
effect give @s minecraft:instant_health 1 4 true

scoreboard players set #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.player_is_damage_immune omegaflowey.global.flag 0
