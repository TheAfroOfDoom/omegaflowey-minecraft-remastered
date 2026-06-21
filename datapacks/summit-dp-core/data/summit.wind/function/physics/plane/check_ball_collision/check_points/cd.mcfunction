scoreboard players operation a summit.wind.calc = Py summit.wind.calc
scoreboard players operation a summit.wind.calc -= @s summit.wind.Cy
scoreboard players operation b summit.wind.calc = @s summit.wind.Dz
scoreboard players operation b summit.wind.calc -= @s summit.wind.Cz
scoreboard players operation c summit.wind.calc = Pz summit.wind.calc
scoreboard players operation c summit.wind.calc -= @s summit.wind.Cz
scoreboard players operation d summit.wind.calc = @s summit.wind.Dy
scoreboard players operation d summit.wind.calc -= @s summit.wind.Cy
scoreboard players operation e summit.wind.calc = @s summit.wind.Dx
scoreboard players operation e summit.wind.calc -= @s summit.wind.Cx
scoreboard players operation f summit.wind.calc = Px summit.wind.calc
scoreboard players operation f summit.wind.calc -= @s summit.wind.Cx
execute store result score cd summit.wind.calc run function summit.wind:physics/plane/check_ball_collision/check_points/cross_and_dot
