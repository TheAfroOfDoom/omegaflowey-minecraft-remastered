#> mathf:trig/cos
# 
# Returns the cosine of the angle input (in degrees).
# 
# @input    score   i0  mathf.io    Angle in degrees (Scale 100).
# @output   score   o0  mathf.io    Number between 0 and 1 (Scale 1000).
# 
# @public
# @context any

scoreboard players operation i0 mathf.io *= #-1 mathf.const
scoreboard players operation i0 mathf.io += #9000 mathf.const

function mathf:trig/sin
