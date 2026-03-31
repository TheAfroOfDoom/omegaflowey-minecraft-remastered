# NOTE: uncomment this to make sure each bullet is being summoned on frame
# 6, 22, 38, 54, ... (16N + 6).
# this aligns with when we want to summon the bullet in the flip animation,
# which is on the first frame the pan flips up

# tellraw @a ["summon bullets on global frame / anim frame: [", \
#   { score: { name: "@s", "objective": "aj.omegaflowey_flip.frame" } }, \
#   "]" \
# ]

scoreboard players set @s omegaflowey.soul.indicator.bullets.remaining 4

function omegaflowey.entity:soul/soul_4/indicator/loop/summon_bullets
