$function summit.climbing:util/shortest_angle_difference {angle_1:$(angle_1), angle_2:$(angle_2)}
execute if score #summit.climbing.math.angle_dif_final summit.climbing.int matches ..-1 run return 1
execute if score #summit.climbing.math.angle_dif_final summit.climbing.int matches 1.. run return -1
return 0
