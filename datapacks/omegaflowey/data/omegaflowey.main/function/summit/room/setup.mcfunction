function omegaflowey.entity:decorative/remove

function omegaflowey.main:summit/room/cave/setup
function omegaflowey.main:summit/room/outside/setup
function omegaflowey.main:summit/room/pit/setup

# Tag all decorative entities the summit-required decoration tag
# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
tag @e[\
  x=-186, dx=91, y=10, dy=95, z=12, dz=95, \
  tag=decorative, \
  tag=omega-flowey-remastered \
] add summit.booth_decoration
