scoreboard players set @s omegaflowey.music.clock.total 100
tag @s add looped_music.attack_phase_repeat_0
data modify entity @s data.looped_music.playsound_command set value "playsound omega-flowey:music.phase.repeat.0 record @a ~ ~ ~ 10 1"
data modify entity @s data.looped_music.stopsound_command set value "stopsound @a record omega-flowey:music.phase.repeat.0"

# base initializations
function omegaflowey.entity:directorial/boss_fight/music/initialize with entity @s data.looped_music
