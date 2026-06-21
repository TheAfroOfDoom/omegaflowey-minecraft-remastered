function reef:api/tick
function reef:zzzinternals/tick
execute if entity @a[tag=trplnr.debug] unless entity @n[tag=rah] run summon item_display ~ ~ ~ {item: {id: "amethyst_shard"}, Tags: ["rah"]}
