execute as @a[scores={summit.time_played=..1}] at @s run function summit:join_detection/first_join
execute as @a unless score @s summit.on_join = @s summit.on_join run scoreboard players add @s summit.on_join 1
execute as @a[scores={summit.on_join=1..}] at @s run function summit:join_detection/on_join
scoreboard players enable @a spawn
execute as @a[scores={spawn=1..}] at @s run function summit:spawn_trigger/trigger
execute as @a[scores={summit.sticker_book_actions=1..}] at @s run function summit.sticker_book:actions/main
execute as @a[scores={summit.use_book=1..}] at @s run function summit.sticker_book:open
gamerule log_admin_commands true
