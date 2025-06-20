# see: https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing
execute positioned ^ ^-1 ^2 summon minecraft:marker run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/shootface/store_pos

function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/shootface/macro with storage omegaflowey:attack.flamethrower
execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/summon with storage omegaflowey:attack.flamethrower

execute positioned ^ ^-1 ^1.5 summon minecraft:marker run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/shootface/store_pos

function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/shootface/macro with storage omegaflowey:attack.flamethrower

execute positioned ^ ^-1 ^2.5 summon minecraft:marker run \
  function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/shootface/store_pos

function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/indicator/loop/fire/shootface/macro with storage omegaflowey:attack.flamethrower
