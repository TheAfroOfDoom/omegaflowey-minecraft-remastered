#> mathf:trig/tan
# 
# Returns the tangent of the angle input (in degrees).
# Note that this function is very inaccurate past 80 degrees.
# 
# @input    score   i0  mathf.io    Angle in degrees (Scale 100).
# @output   score   o0  mathf.io    Number between 0 and 1 (Scale 1000).
# 
# @public
# @context any

function mathf:trig/sin
scoreboard players operation sine mathf.data = o0 mathf.io

scoreboard players operation sineSquared mathf.data = sine mathf.data
scoreboard players operation sineSquared mathf.data *= sine mathf.data
scoreboard players operation sineSquared mathf.data /= #100 mathf.const

scoreboard players set denominator mathf.data 10000
scoreboard players operation denominator mathf.data -= sineSquared mathf.data
scoreboard players operation i0 mathf.io = denominator mathf.data
function mathf:sqrt
scoreboard players operation denominator mathf.data = o0 mathf.io
scoreboard players operation denominator mathf.data *= #10 mathf.const

scoreboard players operation o0 mathf.io = sine mathf.data
scoreboard players operation o0 mathf.io *= #1000 mathf.const
scoreboard players operation o0 mathf.io /= denominator mathf.data
