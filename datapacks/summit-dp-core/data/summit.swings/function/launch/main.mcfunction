scoreboard players operation $velocity summit.temp = @s summit.angular_velocity
execute rotated as @s as @p[tag=summit.swing_sitter, predicate=!summit.swings:vehicle] run function summit.swings:launch/launch
