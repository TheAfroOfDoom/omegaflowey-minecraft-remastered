# inputs:
#   u: vector: {x, y, z}: {x: float, y: float, z: float}
#   v: vector: {x, y, z}: {x: float, y: float, z: float}
# outputs:
#   out: int: the dot product (scaled up by 100x) between vectors `u` and `v`
function utils:math/vector/dot_macro with storage utils:math.vector.dot v
