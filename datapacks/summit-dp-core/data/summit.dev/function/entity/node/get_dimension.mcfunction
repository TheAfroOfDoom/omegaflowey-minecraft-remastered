execute unless entity @s[type=piglin_brute] run return fail
data modify storage summit:temp dimension set from entity @s Brain.memories."minecraft:home".value.dimension
data merge entity @s {Silent: 1b, DeathTime: 19s}
tp ~ -3000 ~
kill @s
