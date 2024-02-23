## Replace this bullet with an act button
# TODO a test for this would be smart and easy?
execute store result storage soul:soul_0 x float 0.01 run data get entity @s Pos[0] 100
execute store result storage soul:soul_0 z float 0.01 run data get entity @s Pos[2] 100

function entity:soul/soul_0/act_button/summon with storage soul:soul_0

function entity:soul/soul_0/bullet/terminate
