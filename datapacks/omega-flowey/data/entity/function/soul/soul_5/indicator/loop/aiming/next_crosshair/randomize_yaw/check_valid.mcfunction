# this position is invalid if the placement is too close to the indicator
scoreboard players set @s math.bool 1

$function entity:directorial/boss_fight/summit/soul_origin/at/y { \
  command: "execute rotated $(next_bullet_angle_from_player) 0 positioned ^ ^ ^4 positioned ~ ~-3.9 ~ \
  if entity @e[type=minecraft:item_display,tag=soul_5,tag=soul-indicator,distance=..3] run \
  scoreboard players set @s math.bool 0" \
}
