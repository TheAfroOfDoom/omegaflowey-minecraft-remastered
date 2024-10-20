# activate all associated bullets
$tag $(corresponding_bullet_0_uuid) remove stationary
$tag $(corresponding_bullet_1_uuid) remove stationary
$tag $(corresponding_bullet_2_uuid) remove stationary
$tag $(corresponding_bullet_3_uuid) remove stationary
$tag $(corresponding_bullet_4_uuid) remove stationary
$tag $(corresponding_bullet_5_uuid) remove stationary
$tag $(corresponding_bullet_6_uuid) remove stationary
$tag $(corresponding_bullet_7_uuid) remove stationary
$tag $(corresponding_bullet_8_uuid) remove stationary
$tag $(corresponding_bullet_9_uuid) remove stationary

# Play activate sound
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:attack.friendliness-pellets.activate hostile @s ~ ~ ~ 5 1 1' \
}

kill @s
