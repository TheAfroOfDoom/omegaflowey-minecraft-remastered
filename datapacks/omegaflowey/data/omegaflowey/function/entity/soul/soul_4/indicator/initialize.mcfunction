function omegaflowey:entity/soul/shared/indicator/initialize
tag @s add soul_4
data merge entity @s { CustomName:'"Soul 4 Indicator"' }

scoreboard players add #omegaflowey.soul.4.current_pan_idx omegaflowey.soul.flag 1

# tag the pan that will summon the act button
execute if score #omegaflowey.soul.4.current_pan_idx omegaflowey.soul.flag = #omegaflowey.soul.4.act_button_pan_idx omegaflowey.soul.flag run \
  tag @s add is_act_button_pan

# Set scores
scoreboard players set @s omegaflowey.soul.clock.i -22
scoreboard players set @s omegaflowey.soul.indicator.rate 16
# track how many clumps of bullets we've summoned
scoreboard players set @s omegaflowey.soul.indicator.bullets.total 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.4 indicator_uuid set from storage gu:main out
