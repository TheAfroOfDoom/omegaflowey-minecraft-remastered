function omegaflowey:main/summit-2026/room/pit/setup/text_displays

function aj:omegaflowey_summitflowerbed/remove/all
execute positioned 72.0 50.0 -15.25 rotated 180 0 run \
  function aj:omegaflowey_summitflowerbed/summon { args: {} }

# player flowers
function aj:omegaflowey_flowercontributor/remove/all
execute positioned 64.0 50.0 -15.0 rotated -90 0 run function aj:omegaflowey_flowercontributor/summon { args: { variant: 'default' } }
execute positioned 72.0 50.0 -23.0 rotated 0 0 run function aj:omegaflowey_flowercontributor/summon { args: { variant: 'adahy' } }
