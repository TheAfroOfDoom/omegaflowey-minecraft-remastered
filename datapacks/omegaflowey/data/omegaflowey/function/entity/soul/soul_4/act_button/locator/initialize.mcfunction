# delete locators not specific to soul_4
execute unless entity @s[tag=soul_4.only] run return run kill @s

function omegaflowey:entity/soul/shared/initialize
tag @s add soul_4
tag @s add soul-locator
tag @s add soul-interaction
tag @s add summit.interactable
data merge entity @s { \
  width: 0.4375f, \
  height: 5.5125f, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_soul_act_button_locator" \
    } \
  } \
}
