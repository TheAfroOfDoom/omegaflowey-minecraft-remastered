scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute if entity @s[tag=is_flipped] run \
  scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2

# Summon bullet
$execute positioned $(x) $(y) $(z) run function aj:omegaflowey_housefly/summon { args: {} }

# Decrement bullets remaining to summon
scoreboard players remove @s omegaflowey.attack.bullets.remaining 1
scoreboard players add @s omegaflowey.attack.bullets.summoned 1

scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
