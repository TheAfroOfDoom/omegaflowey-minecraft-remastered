# Summon flower at current position
execute store result storage soul:soul_5.bullet x float 0.01 run scoreboard players get @s soul.bullet.position.x
execute store result storage soul:soul_5.bullet z float 0.01 run scoreboard players get @s soul.bullet.position.z
function entity:soul/soul_5/healer/summon with storage soul:soul_5.bullet

# Terminate
function entity:soul/soul_5/bullet/terminate
