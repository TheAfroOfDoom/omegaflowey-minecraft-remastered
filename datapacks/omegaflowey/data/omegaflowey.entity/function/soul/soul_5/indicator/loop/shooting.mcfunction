## Rotate towards the next crosshair in the `crosshairs` storage array
# and shoot a bullet towards it

execute if entity @s[tag=soul_5.shooting.rotating] run function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/rotate with storage soul:soul_5.indicator

execute if entity @s[tag=!soul_5.shooting.rotating] run function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/pop
