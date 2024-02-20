execute store result storage soul:soul_0 x float 0.01 run scoreboard players get @s soul.bullet.position.x
execute store result storage soul:soul_0 z float 0.01 run scoreboard players get @s soul.bullet.position.z

# Instead of summoning a sword at 6th-index up from the middle grid position,
# summon an act button
# NOTE: we are simply using a approximate coordinate check for this replacement
# TODO a test for this would be smart and easy?
scoreboard players set @s math.bool 0
execute if score @s soul.bullet.position.x matches 0..100 if score @s soul.bullet.position.z matches -9500..-9400 run scoreboard players set @s math.bool 1

execute if score @s math.bool matches 0 run function entity:soul/soul_0/bullet/summon with storage soul:soul_0
execute if score @s math.bool matches 1 run function entity:soul/soul_0/act_button/summon with storage soul:soul_0
