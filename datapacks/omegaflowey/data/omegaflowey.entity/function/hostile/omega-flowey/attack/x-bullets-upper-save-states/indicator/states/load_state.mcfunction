execute store result score @s omegaflowey.attack.bullets.remaining run data get storage attack:x-bullets-upper-save-states state_scores.attack_bullets_remaining
execute store result score @s omegaflowey.attack.clock.i run data get storage attack:x-bullets-upper-save-states state_scores.attack_clock_i
execute store result score @s attack.position.x run data get storage attack:x-bullets-upper-save-states state_scores.attack_position_x
execute store result score @s attack.position.y run data get storage attack:x-bullets-upper-save-states state_scores.attack_position_y
execute store result score @s attack.position.z run data get storage attack:x-bullets-upper-save-states state_scores.attack_position_z
execute store result score @s attack.indicator.yaw run data get storage attack:x-bullets-upper-save-states state_scores.attack_indicator_yaw
execute store result score @s attack.theta run data get storage attack:x-bullets-upper-save-states state_scores.attack_theta
execute store result score @s attack.d-phi run data get storage attack:x-bullets-upper-save-states state_scores.attack_d_phi
execute store result score @s attack.phi run data get storage attack:x-bullets-upper-save-states state_scores.attack_phi

tag @s remove attack-indicator-new
