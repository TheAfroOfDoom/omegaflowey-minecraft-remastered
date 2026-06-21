scoreboard players operation a summit.wind.calc = Py summit.wind.calc
scoreboard players operation a summit.wind.calc -= @s summit.wind.Ay
scoreboard players operation b summit.wind.calc = @s summit.wind.Cz
scoreboard players operation b summit.wind.calc -= @s summit.wind.Az
scoreboard players operation c summit.wind.calc = Pz summit.wind.calc
scoreboard players operation c summit.wind.calc -= @s summit.wind.Az
scoreboard players operation d summit.wind.calc = @s summit.wind.Cy
scoreboard players operation d summit.wind.calc -= @s summit.wind.Ay
scoreboard players operation e summit.wind.calc = @s summit.wind.Cx
scoreboard players operation e summit.wind.calc -= @s summit.wind.Ax
scoreboard players operation f summit.wind.calc = Px summit.wind.calc
scoreboard players operation f summit.wind.calc -= @s summit.wind.Ax
execute store result score ac summit.wind.calc run function summit.wind:physics/plane/check_ball_collision/check_points/cross_and_dot
