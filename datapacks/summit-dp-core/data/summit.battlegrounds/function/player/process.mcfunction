execute if score @s summit.battlegrounds.died matches 1.. run function summit.battlegrounds:player/event/dies
execute if score @s summit.battlegrounds.trigger matches 83550300..83550399 run function summit.battlegrounds:booth_queue/trigger/activate
execute if score @s summit.battlegrounds.trigger matches 83550400 run function summit.battlegrounds:booth_queue/trigger/remove
execute if score @s summit.battlegrounds.kit_expiration matches 0.. if entity @s[tag=!summit.battlegrounds.player] run scoreboard players remove @s summit.battlegrounds.kit_expiration 1
execute if score @s summit.battlegrounds.kit_expiration matches 0 if entity @s[tag=!summit.battlegrounds.player] run function summit.battlegrounds:api/unassign_kit
execute if predicate summit.battlegrounds:near_battlegrounds run function summit.battlegrounds:player/check_bounds
execute if score @s summit.battlegrounds.return_timer matches 1.. run function summit.battlegrounds:player/event/leave_above/return_check
