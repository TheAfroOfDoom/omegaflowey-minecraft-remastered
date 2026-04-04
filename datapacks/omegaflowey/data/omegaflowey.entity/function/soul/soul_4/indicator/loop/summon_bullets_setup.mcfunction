# NOTE: uncomment this to make sure each bullet is being summoned on frame
# 6, 22, 38, 54, ... (16N + 6).
# this aligns with when we want to summon the bullet in the flip animation,
# which is on the first frame the pan flips up

# tellraw @a ["summon bullets on global frame / anim frame: [", \
#   { score: { name: "@s", "objective": "aj.omegaflowey_flip.frame" } }, \
#   "]" \
# ]

execute if entity @s[tag=pause_flipping] run return 0

scoreboard players set @s omegaflowey.soul.indicator.bullets.remaining 4

function omegaflowey:entity/soul/soul_4/indicator/loop/summon_bullets

scoreboard players add @s omegaflowey.soul.indicator.bullets.total 1

execute if score @s[tag=is_act_button_pan] omegaflowey.soul.indicator.bullets.total matches 12 run \
  tag @s add pause_flipping
execute if score @s[tag=is_act_button_pan] omegaflowey.soul.indicator.bullets.total matches 12 run \
  scoreboard players operation \
    #omegaflowey.soul.4.act_button_pan_pause_clock_idx omegaflowey.soul.flag = \
    @s omegaflowey.soul.clock.i
