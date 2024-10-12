#> omegaflowey.mathf:private/exp-loop
# @within function omegaflowey.mathf:exp

scoreboard players add powerCount mathf.data 1
scoreboard players operation temp mathf.data *= i0 mathf.io
execute if score powerCount mathf.data < i1 mathf.io run function omegaflowey.mathf:private/exp-loop
execute if score powerCount mathf.data = i1 mathf.io run scoreboard players operation o0 mathf.io = temp mathf.data
