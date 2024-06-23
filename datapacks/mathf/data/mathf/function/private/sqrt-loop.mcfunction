#> mathf:private/sqrt-loop
# @within function mathf:sqrt

scoreboard players add sqrtCount mathf.data 1
scoreboard players operation sqrtValue mathf.data = i0 mathf.io
scoreboard players operation sqrtValue mathf.data /= o0 mathf.io
scoreboard players operation sqrtValue mathf.data += o0 mathf.io
scoreboard players operation sqrtValue mathf.data /= #2 mathf.const
scoreboard players operation o0 mathf.io = sqrtValue mathf.data

# Detect if the function can stop looping
execute store success score sqrtFinished mathf.data if score i0 mathf.io matches ..-1
execute store success score sqrtFinished mathf.data if score sqrtValue.n-1 mathf.data = sqrtValue mathf.data
execute store success score sqrtFinished mathf.data if score sqrtValue.n-2 mathf.data = sqrtValue mathf.data
execute if score sqrtCount mathf.data matches 35.. run scoreboard players set sqrtFinished mathf.data 1

# Set sqrt temporary previous values
scoreboard players operation sqrtValue.n-2 mathf.data = sqrtValue.n-1 mathf.data
scoreboard players operation sqrtValue.n-1 mathf.data = sqrtValue mathf.data

# Loop the function if not accurate enough
execute if score sqrtFinished mathf.data matches 0 run function mathf:private/sqrt-loop
