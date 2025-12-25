scoreboard players set #omegaflowey.attack.flamethrower.play_burn_sound omegaflowey.attack.flag 1

data merge storage omegaflowey:utils.damage { damage: 2, radius: 1, source: 'flamethrower.bullet' }
function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage

scoreboard players set #omegaflowey.attack.flamethrower.play_burn_sound omegaflowey.attack.flag 0

# TODO(288): maybe set player on fire for a second here??
# item replace entity @s armor.feet with pink_carpet[enchantments={"omegaflowey.entity:attack_flamethrower_ignite": 1}]
