# delete locators not specific to soul_4
execute unless entity @s[tag=soul_4.only] run return run kill @s

function omegaflowey.entity:soul/shared/initialize
tag @s add soul_4
tag @s add soul-locator
tag @s add soul-interaction
