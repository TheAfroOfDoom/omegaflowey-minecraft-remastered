execute store result score @s attack.bullets.count run data get storage attack:homing-vines-save-states state_scores.attack_bullets_count
execute store result score @s attack.bullets.total run data get storage attack:homing-vines-save-states state_scores.attack_bullets_total
execute store result score @s attack.clock.i run data get storage attack:homing-vines-save-states state_scores.attack_clock_i
execute store result score @s attack.position.x run data get storage attack:homing-vines-save-states state_scores.attack_position_x
execute store result score @s attack.position.y run data get storage attack:homing-vines-save-states state_scores.attack_position_y
execute store result score @s attack.position.z run data get storage attack:homing-vines-save-states state_scores.attack_position_z

tag @s remove attack-indicator-new
