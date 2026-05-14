$data merge entity $(bone_eyes) {transformation: [-1.9832f,0f,0f,25f,0f,2.0305f,0.1117f,4.7904f,0f,0.1089f,-1.9802f,-3.4386f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.9832f,0f,0f,25f,0f,2.0305f,0.1117f,5.298f,0f,0.1089f,-1.9802f,-3.4113f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,25f,0f,0f,0f,5.8037f,0f,0f,0f,-4.2532f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,25f,0f,0f,0f,1.5396f,0f,0f,0f,-4.4819f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.9832f,0f,0f,25f,0f,2.0305f,0.1117f,4.3316f,0f,0.1089f,-1.9802f,-4.3321f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,25f,0f,0f,0f,1.5396f,0f,0f,0f,-4.4819f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-1.9832f,0f,0f,25f,0f,2.0305f,0.1117f,3.0625f,0f,0.1089f,-1.9802f,-4.4002f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [0f,-1.9832f,0f,26.7438f,0f,0f,2.0336f,3.9204f,-1.9832f,0f,0f,-4.4225f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.5133f,-1.9156f,0f,26.9876f,0f,0f,2.0336f,3.8251f,-1.9156f,0.5133f,0f,-4.2312f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.5133f,-1.9156f,0f,26.8592f,0f,0f,2.0336f,3.9522f,-1.9156f,0.5133f,0f,-4.7101f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [0f,1.9832f,0f,23.2562f,0f,0f,2.0336f,3.9204f,1.9832f,0f,0f,-4.3605f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.5133f,1.9156f,0f,23.0124f,0f,0f,2.0336f,3.8251f,1.9156f,0.5133f,0f,-4.1692f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.5133f,1.9156f,0f,23.1408f,0f,0f,2.0336f,3.9522f,1.9156f,0.5133f,0f,-4.6481f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,26.2395f,0f,0f,0f,3.8251f,0f,0f,0f,-4.5242f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,26.2395f,0f,0f,0f,3.8251f,0f,0f,0f,-4.5242f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,26.2395f,0f,0f,0f,3.8251f,0f,0f,0f,-4.5242f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
