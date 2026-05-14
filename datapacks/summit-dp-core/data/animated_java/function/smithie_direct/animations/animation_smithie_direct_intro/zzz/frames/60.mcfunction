$data merge entity $(bone_eyes) {transformation: [-1.8875f,0.1118f,-0.7908f,5.5838f,0.1491f,1.8943f,-0.0461f,3.1777f,0.7858f,-0.0955f,-1.8908f,0.7436f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.8875f,0.1118f,-0.7908f,5.6117f,0.1491f,1.8943f,-0.0461f,3.6513f,0.7858f,-0.0955f,-1.8908f,0.7197f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,5.2909f,0f,0f,0f,4.0573f,0f,0f,0f,-0.129f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,5.0562f,0f,0f,0f,0.0793f,0f,0f,0f,0.0716f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.8875f,0.1118f,-0.7908f,5.2099f,0.1491f,1.8943f,-0.0461f,2.6839f,0.7858f,-0.0955f,-1.8908f,-0.0597f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,5.0562f,0f,0f,0f,0.0793f,0f,0f,0f,0.0716f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-1.8875f,0.1118f,-0.7908f,5.14f,0.1491f,1.8943f,-0.0461f,1.5f,0.7858f,-0.0955f,-1.8908f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-1.4868f,-0.0115f,1.4107f,6.447f,1.1957f,0.7986f,1.2432f,1.8703f,-0.5931f,1.8652f,-0.609f,-0.4823f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-1.2597f,0.7898f,1.4107f,6.4423f,1.4375f,0.0303f,1.2432f,1.6101f,0.503f,1.8915f,-0.609f,-0.6844f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-1.2597f,0.7898f,1.4107f,6.3037f,1.4375f,0.0303f,1.2432f,2.1249f,0.503f,1.8915f,-0.609f,-0.6348f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-1.9305f,0.0461f,-0.6869f,3.5783f,-0.6024f,0.363f,1.7658f,2.1098f,0.1695f,2.0138f,-0.3429f,0.5714f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-1.8837f,-0.4247f,-0.6869f,3.4255f,-0.6726f,0.2056f,1.7658f,1.8961f,-0.3253f,1.9945f,-0.3429f,0.3652f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-1.8837f,-0.4247f,-0.6869f,3.8106f,-0.6726f,0.2056f,1.7658f,2.285f,-0.3253f,1.9945f,-0.3429f,0.4037f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,6.3108f,0f,0f,0f,2.1231f,0f,0f,0f,-0.6377f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,6.3108f,0f,0f,0f,2.123f,0f,0f,0f,-0.6377f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,6.3108f,0f,0f,0f,2.123f,0f,0f,0f,-0.6377f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_right/apply
