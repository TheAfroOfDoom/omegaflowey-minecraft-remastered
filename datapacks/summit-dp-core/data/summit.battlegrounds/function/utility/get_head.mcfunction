data remove storage summit.battlegrounds:temp profile
execute at @s run loot spawn ~ -1000 ~ loot summit:technical/player_head
execute at @s positioned ~ -1000 ~ run data modify storage summit.battlegrounds:temp profile set from entity @e[type=item, limit=1, distance=..0.1, sort=nearest] Item.components."minecraft:profile"
execute at @s positioned ~ -1000 ~ run kill @e[type=item, limit=1, distance=..0.1, sort=nearest]
