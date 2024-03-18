$$(stopsound_command)

scoreboard players reset @s music.clock.i
scoreboard players reset @s music.clock.total

data remove entity @s data.looped_music.playsound_command
data remove entity @s data.looped_music.stopsound_command

tag @s remove is_looping_music
