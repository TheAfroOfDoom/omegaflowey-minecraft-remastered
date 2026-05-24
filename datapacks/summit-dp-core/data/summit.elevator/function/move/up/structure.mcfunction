fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace oxidized_copper_chain[axis=x] strict
fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace oxidized_copper_chain[axis=z] strict
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 air replace #summit.elevator:elevator_block strict
fill ~-2 ~ ~-1 ~-2 ~2 ~1 oxidized_copper_trapdoor[facing=west, half=bottom, open=true, powered=false, waterlogged=false] replace air strict
fill ~2 ~ ~-1 ~2 ~2 ~1 oxidized_copper_trapdoor[facing=east, half=bottom, open=true, powered=false, waterlogged=false] replace air strict
fill ~-1 ~ ~-2 ~1 ~2 ~-2 oxidized_copper_trapdoor[facing=north, half=bottom, open=true, powered=false, waterlogged=false] replace air strict
fill ~-1 ~ ~2 ~1 ~2 ~2 oxidized_copper_trapdoor[facing=south, half=bottom, open=true, powered=false, waterlogged=false] replace air strict
fill ~-1 ~ ~-1 ~-1 ~1 ~-1 oxidized_copper_chain replace exposed_lightning_rod strict
fill ~1 ~ ~1 ~1 ~1 ~1 oxidized_copper_chain replace exposed_lightning_rod strict
fill ~-1 ~ ~1 ~-1 ~1 ~1 oxidized_copper_chain replace exposed_lightning_rod strict
fill ~1 ~ ~-1 ~1 ~1 ~-1 oxidized_copper_chain replace exposed_lightning_rod strict
$fill ~-1 ~ ~-1 ~1 $(y2) ~1 exposed_lightning_rod[facing=up,powered=true] replace exposed_lightning_rod strict
$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) exposed_lightning_rod[facing=$(raise),powered=true] replace exposed_lightning_rod strict
