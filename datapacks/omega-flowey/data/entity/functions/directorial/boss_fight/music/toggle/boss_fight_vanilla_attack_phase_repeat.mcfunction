execute if entity @s[tag=looped_music.attack_phase_repeat_0] run tag @s add had_repeat_0
execute if entity @s[tag=looped_music.attack_phase_repeat_1] run tag @s add had_repeat_1

# error if we have neither tag
execute if entity @s[tag=!had_repeat_0,tag=!had_repeat_1] run function entity:directorial/boss_fight/music/toggle/boss_fight_vanilla_attack_phase_repeat/error/neither
execute if entity @s[tag=!had_repeat_0,tag=!had_repeat_1] run return fail

# error if we have both tags
execute if entity @s[tag=had_repeat_0,tag=had_repeat_1] run function entity:directorial/boss_fight/music/toggle/boss_fight_vanilla_attack_phase_repeat/error/both
execute if entity @s[tag=had_repeat_0,tag=had_repeat_1] run return fail

function entity:directorial/boss_fight/music/terminate with entity @s data.looped_music

execute if entity @s[tag=had_repeat_0] run function entity:directorial/boss_fight/music/initialize/boss_fight_vanilla_attack_phase_repeat_1
execute if entity @s[tag=had_repeat_1] run function entity:directorial/boss_fight/music/initialize/boss_fight_vanilla_attack_phase_repeat_0

tag @s remove had_repeat_0
tag @s remove had_repeat_1
