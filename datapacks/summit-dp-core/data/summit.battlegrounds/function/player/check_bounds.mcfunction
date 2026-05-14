execute store success score #below_surface summit.battlegrounds if predicate summit.battlegrounds:below_surface
execute store success score #in_bounds summit.battlegrounds if block ~ 55 ~ green_concrete
execute if entity @s[tag=summit.battlegrounds.player, tag=!summit.battlegrounds.return] if score #in_bounds summit.battlegrounds matches 0 if score #below_surface summit.battlegrounds matches 0 run function summit.battlegrounds:player/event/leave_above
execute if entity @s[tag=summit.battlegrounds.player, tag=!summit.battlegrounds.return] if score #in_bounds summit.battlegrounds matches 0 if score #below_surface summit.battlegrounds matches 1 run function summit.battlegrounds:player/event/leave
execute if entity @s[tag=!summit.battlegrounds.player, gamemode=!creative, gamemode=!spectator] if score #in_bounds summit.battlegrounds matches 1 if score #below_surface summit.battlegrounds matches 1 run function summit.battlegrounds:player/event/enter
execute if entity @s[tag=summit.battlegrounds.return] if score #in_bounds summit.battlegrounds matches 1 run function summit.battlegrounds:player/event/return
