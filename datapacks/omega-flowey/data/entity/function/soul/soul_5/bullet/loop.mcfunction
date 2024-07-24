# Move forward
teleport @s ^ ^ ^1.0

## Delete bullets once they visually escape the arena
function entity:soul/soul_5/shared/terminate_unless_in_region { \
  x_score: 'soul.bullet.position.x', \
  z_score: 'soul.bullet.position.z', \
  terminate_command: 'function entity:soul/soul_5/bullet/terminate' \
}
