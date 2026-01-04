# math.0 = current z coord

# summon a bullet at current position
function entity:soul/soul_2/indicator/loop/next_row/shoes/presummon

scoreboard players operation @s math.0 += @s soul.bullet.position.dz
scoreboard players remove @s soul.indicator.bullets.remaining 1

# if we have no more bullets to summon, stop iterating
execute if score @s soul.indicator.bullets.remaining matches ..0 run return 0

# else iterate again
function entity:soul/soul_2/indicator/loop/next_row/shoes/iterate
