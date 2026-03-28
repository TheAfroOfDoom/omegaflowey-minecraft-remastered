# delete locators not specific to soul_3
execute unless entity @s[tag=soul_3.only] run return run kill @s

function omegaflowey.entity:soul/shared/initialize
tag @s add soul_3
tag @s add soul-locator
tag @s add soul-interaction
