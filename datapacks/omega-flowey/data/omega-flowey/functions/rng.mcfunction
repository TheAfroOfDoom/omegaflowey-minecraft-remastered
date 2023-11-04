## Sets the score `random` to a randomized value between `random.min` and `random.min + random.range`

# Summon entity with random UUID
summon minecraft:marker ~ ~ ~ {Tags:["omega-flowey-remastered","rng"]}

# Store the random UUID
execute store result score @s random run data get entity @e[limit=1,tag=rng,type=minecraft:marker] UUID[0] 1

# Modulus the random score to be within the desired range
execute if score @s random.range matches 1.. run scoreboard players operation @s random %= @s random.range
execute if score @s random.range matches 0 run scoreboard players set @s random 0

# Add the minimum value to the random score
scoreboard players operation @s random += @s random.min

# Reset the rng
kill @e[tag=rng]
