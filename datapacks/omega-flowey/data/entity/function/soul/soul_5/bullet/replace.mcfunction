## Replace this bullet with an act button
# TODO(81): a test for this would be smart and easy?
# blocked by https://github.com/TheAfroOfDoom/omega-flowey-minecraft-remastered/issues/81
execute store result storage soul:soul_5 x float 0.01 run data get entity @s Pos[0] 100
execute store result storage soul:soul_5 z float 0.01 run data get entity @s Pos[2] 100

function entity:soul/soul_5/act_button/summon with storage soul:soul_5

function entity:soul/soul_5/bullet/terminate
