# randomize angle (0..2pi)
execute store result storage soul:soul_5.indicator next_bullet_angle_from_player float 0.01 run random value 0..35999

function entity:soul/soul_5/crosshair/summon with storage soul:soul_5.indicator

scoreboard players remove @s soul.indicator.bullets.remaining 1
