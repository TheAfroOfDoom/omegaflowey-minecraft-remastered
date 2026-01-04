# summon a bullet in the current row
function entity:soul/soul_2/indicator/loop/next_row/stars/presummon

scoreboard players remove @s soul.indicator.bullets.remaining 1

# if we have no more bullets to summon, stop iterating
execute if score @s soul.indicator.bullets.remaining matches ..0 run return 0

# else iterate again
function entity:soul/soul_2/indicator/loop/next_row/stars/iterate
