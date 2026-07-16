# Remove preexisting decorative AJ models
function omegaflowey:entity/remove_animated_java_models/summit-2026 with storage omegaflowey:decorative

# Remove other preexisting decorative entities
# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
kill @e[predicate=summit.booth:omegaflowey/in_bounding_box/global, tag=decorative, tag=omega-flowey-remastered]
# kill @e[x=25, dx=96, y=-10, dy=171, z=-47, dz=73, tag=decorative, tag=omega-flowey-remastered]
