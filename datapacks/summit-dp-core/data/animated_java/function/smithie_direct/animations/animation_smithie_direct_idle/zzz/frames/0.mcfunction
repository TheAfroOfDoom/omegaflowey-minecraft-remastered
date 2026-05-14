$data merge entity $(bone_eyes) {transformation: [-1.8864f,-0.0246f,-0.6639f,0.2843f,-0.0458f,1.9987f,0.0561f,2.4645f,0.6628f,0.0681f,-1.8858f,0.6789f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.8864f,-0.0246f,-0.6639f,0.2782f,-0.0458f,1.9987f,0.0561f,2.9641f,0.6628f,0.0681f,-1.8858f,0.6959f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0178f,0f,0f,0f,3.4384f,0f,0f,0f,-0.1138f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0338f,0f,0f,0f,-0.7589f,0f,0f,0f,-0.2568f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.8864f,-0.0246f,-0.6639f,0f,-0.0458f,1.9987f,0.0561f,1.9893f,0.6628f,0.0681f,-1.8858f,-0.1632f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7372f,0f,0f,0f,0.1958f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9829f,-0.2611f,0.75f,0f,-0.2611f,-1.9829f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-0.5176f,-1.9319f,0f,1.7586f,0f,0f,2f,1.5f,-1.9319f,0.5176f,0f,-0.0225f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.5176f,-1.9319f,0f,2.0044f,0f,0f,2f,1.375f,-1.9319f,0.5176f,0f,0.1705f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.5176f,-1.9319f,0f,1.875f,0f,0f,2f,1.625f,-1.9319f,0.5176f,0f,-0.3125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.5176f,1.9319f,0f,-1.7586f,0f,0f,2f,1.5f,1.9319f,0.5176f,0f,0.04f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.5176f,1.9319f,0f,-2.0044f,0f,0f,2f,1.375f,1.9319f,0.5176f,0f,0.233f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.5176f,1.9319f,0f,-1.875f,0f,0f,2f,1.625f,1.9319f,0.5176f,0f,-0.25f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,1.25f,0f,0f,0f,1.5f,0f,0f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,1.25f,0f,0f,0f,1.5f,0f,0f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,1.25f,0f,0f,0f,1.5f,0f,0f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
