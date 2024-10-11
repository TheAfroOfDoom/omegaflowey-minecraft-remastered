#> mathf:fp/2dp/private/exp-loop
# @within function mathf:fp/2dp/exp

scoreboard players add powerCount mathf.data 1
scoreboard players operation temp mathf.data *= i0 mathf.io
scoreboard players operation temp mathf.data /= #100 const

execute if score powerCount mathf.data < i1 mathf.io run function mathf:fp/2dp/private/exp-loop
execute if score powerCount mathf.data = i1 mathf.io run scoreboard players operation o0 mathf.io = temp mathf.data
