scoreboard players add @s omegaflowey.music.clock.i 1

execute if score @s omegaflowey.music.clock.i matches 0 run function omegaflowey.entity:directorial/boss_fight/music/loop/repeat_song with entity @s data.looped_music

execute if score @s omegaflowey.music.clock.i >= @s omegaflowey.music.clock.total run scoreboard players set @s omegaflowey.music.clock.i -1
