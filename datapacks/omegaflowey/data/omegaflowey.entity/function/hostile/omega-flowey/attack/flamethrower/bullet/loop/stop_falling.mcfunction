tag @s remove is_falling
scoreboard players set @s omegaflowey.attack.velocity.y 0
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/position { \
  command: "teleport @s ~ ~-4.0 ~" \
}
