scoreboard objectives add summit.swing_id dummy
scoreboard objectives add summit.angular_velocity dummy
scoreboard objectives add summit.toggle dummy
scoreboard objectives add summit.min_velocity dummy
scoreboard objectives add summit.max_velocity dummy
scoreboard players set $gravityxmass summit.constants -8
scoreboard players set $inertia summit.constants 3025
scoreboard players set $forward_player_torque summit.constants -10000000
scoreboard players set $backward_player_torque summit.constants 10000000
