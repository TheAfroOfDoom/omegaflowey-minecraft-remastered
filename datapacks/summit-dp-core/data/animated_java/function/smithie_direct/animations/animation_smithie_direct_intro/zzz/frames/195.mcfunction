$data merge entity $(bone_eyes) {transformation: [-2.0074f,0.0002f,0f,25.0469f,0.0002f,1.9703f,0.2461f,9.1187f,0f,0.243f,-1.9923f,-0.3526f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.0074f,0.0002f,0f,25.047f,0.0002f,1.9703f,0.2461f,9.6112f,0f,0.243f,-1.9923f,-0.2918f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,25.047f,0f,0f,0f,10.1622f,0f,0f,0f,-1.1088f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,25.0466f,0f,0f,0f,6.0247f,0f,0f,0f,-1.6191f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2.0074f,0.0002f,0f,25.0469f,0.0002f,1.9703f,0.2461f,8.7338f,0f,0.243f,-1.9923f,-1.2849f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,25.0466f,0f,0f,0f,6.0247f,0f,0f,0f,-1.6191f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2.0074f,0.0002f,0f,25.0467f,0.0002f,1.9703f,0.2461f,7.5023f,0f,0.243f,-1.9923f,-1.4368f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [0.2546f,0.1205f,1.9875f,26.2315f,1.8734f,0.5972f,-0.2762f,8.2378f,-0.6199f,1.9086f,-0.0364f,-1.2572f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [0.2806f,-0.0247f,1.9875f,26.0745f,1.9182f,-0.4322f,-0.2762f,8.0558f,0.4304f,1.96f,-0.0364f,-1.4924f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [0.2806f,-0.0247f,1.9875f,26.3931f,1.9182f,-0.4322f,-0.2762f,8.5009f,0.4304f,1.96f,-0.0364f,-1.3894f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [0.2561f,-0.1172f,-1.9875f,23.862f,-1.881f,0.5727f,-0.2762f,8.2378f,0.5949f,1.9165f,-0.0364f,-1.2572f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [0.2806f,0.0247f,-1.9875f,24.0189f,-1.9182f,-0.4322f,-0.2762f,8.0558f,-0.4304f,1.96f,-0.0364f,-1.4924f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [0.2806f,0.0247f,-1.9875f,23.7004f,-1.9182f,-0.4322f,-0.2762f,8.5009f,-0.4304f,1.96f,-0.0364f,-1.3894f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,26.3014f,0f,0f,0f,8.2568f,0f,0f,0f,-1.464f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,26.3014f,0f,0f,0f,8.2568f,0f,0f,0f,-1.464f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,26.3014f,0f,0f,0f,8.2568f,0f,0f,0f,-1.464f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
