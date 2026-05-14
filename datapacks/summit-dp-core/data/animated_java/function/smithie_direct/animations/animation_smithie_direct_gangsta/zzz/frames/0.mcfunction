$data merge entity $(bone_eyes) {transformation: [-2f,0f,0f,0f,0f,1.9924f,-0.1743f,2.9446f,0f,-0.1743f,-1.9924f,1.2191f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2f,0f,0f,0f,0f,1.9924f,-0.1743f,3.4427f,0f,-0.1743f,-1.9924f,1.1756f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [-1.8478f,0f,-0.7654f,0f,0.0667f,1.9924f,-0.161f,3.8147f,0.7625f,-0.1743f,-1.8407f,0.2647f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [-2.4167f,0f,0f,0f,0f,2.4075f,-0.2106f,-0.3693f,0f,-0.2106f,-2.4075f,0.6307f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2f,0f,0f,0f,0f,1.9924f,-0.1743f,2.3702f,0f,-0.1743f,-1.9924f,0.3911f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [-2f,0f,0f,0f,0f,1.9924f,-0.1743f,-0.3693f,0f,-0.1743f,-1.9924f,0.6307f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9924f,-0.1743f,1.125f,0f,-0.1743f,-1.9924f,0.5f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [0f,-2f,0f,1.7586f,0f,0f,2f,1.875f,-2f,0f,0f,0.4775f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.5176f,-1.9319f,0f,2.0044f,0f,0f,2f,1.875f,-1.9319f,0.5176f,0f,0.6705f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.5176f,-1.9319f,0f,1.875f,0f,0f,2f,2f,-1.9319f,0.5176f,0f,0.1875f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [0f,2f,0f,-1.7586f,0f,0f,2f,1.875f,2f,0f,0f,0.4775f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.5176f,1.9319f,0f,-2.0044f,0f,0f,2f,1.875f,1.9319f,0.5176f,0f,0.6705f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.5176f,1.9319f,0f,-1.875f,0f,0f,2f,2f,1.9319f,0.5176f,0f,0.1875f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,1.5f,0f,0f,0f,2.5f,0f,0f,0f,0.375f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,1.5f,0f,0f,0f,2.5f,0f,0f,0f,0.375f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,1.5f,0f,0f,0f,2.5f,0f,0f,0f,0.375f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/graceful/apply
