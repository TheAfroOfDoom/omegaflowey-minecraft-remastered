# TODO(40): remove the `vector.dot` function if we don't end up using it for the homing-vines hitbox
# inputs:
#   u: vector: {x, y, z}: {x: float, y: float, z: float}
#   v: vector: {x, y, z}: {x: float, y: float, z: float}
# outputs:
#   out: int: the dot product (scaled up by 100x) between vectors `u` and `v`
function omegaflowey.utils:math/vector/dot_macro with storage omegaflowey:utils.math.vector.dot v
