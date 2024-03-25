execute store result score @s attack.bullets.count run data get storage attack:x-bullets-upper-save-states state_scores.attack_bullets_count
execute store result score @s attack.bullets.total run data get storage attack:x-bullets-upper-save-states state_scores.attack_bullets_total
execute store result score @s attack.clock.i run data get storage attack:x-bullets-upper-save-states state_scores.attack_clock_i
execute store result score @s attack.position.x run data get storage attack:x-bullets-upper-save-states state_scores.attack_position_x
execute store result score @s attack.position.y run data get storage attack:x-bullets-upper-save-states state_scores.attack_position_y
execute store result score @s attack.position.z run data get storage attack:x-bullets-upper-save-states state_scores.attack_position_z

tag @s remove attack-indicator-new

# Resummon blinking_lane if it existed when we saved state
execute if data storage attack:x-bullets-upper-save-states entity_specific_params.has_blinking_lane run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/states/load_state/resummon/blinking_lane with storage attack:x-bullets-upper-save-states entity_specific_params.blinking_lane
