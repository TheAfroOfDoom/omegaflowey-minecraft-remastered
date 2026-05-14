tp @s[tag=!summit.climbing.end] ~ ~-0.7 ~ ~ ~
execute at @s unless block ~ ~ ~ #summit.climbing:climbing_safe run tp @s ~ ~0.4 ~
function summit.climbing:climb/mannequin/swing
execute if data storage summit.climbing:master {init: {move: {direction: "up"}}} run return run rotate @s ~ -60
execute if data storage summit.climbing:master {init: {move: {direction: "left"}}} run return run rotate @s ~ -30
execute if data storage summit.climbing:master {init: {move: {direction: "right"}}} run return run rotate @s ~ -30
execute if data storage summit.climbing:master {init: {move: {direction: "down"}}} run return run rotate @s ~ 10
