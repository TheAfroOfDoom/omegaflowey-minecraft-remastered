scoreboard players set #success aj.i 0
execute if data storage animated_java:temp {args: {variant: ""}} run return run function animated_java:smithie_direct/zzz/summon/variant_arg/if_empty
execute store success score #success aj.i run function animated_java:smithie_direct/zzz/summon/variant_arg/try_apply with storage animated_java:temp args
execute unless score #success aj.i matches 1 run return run function animated_java:smithie_direct/zzz/summon/variant_arg/invalid_variant
scoreboard players set #success aj.i 1
