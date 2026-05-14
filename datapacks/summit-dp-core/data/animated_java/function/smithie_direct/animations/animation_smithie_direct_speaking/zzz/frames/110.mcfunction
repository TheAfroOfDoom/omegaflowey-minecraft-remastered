$data merge entity $(bone_eyes) {transformation: [-1.9971f,-0.0165f,0.1065f,-0.06f,-0.0127f,1.7571f,0.1148f,2.4902f,-0.1074f,0.1003f,-1.9939f,0.7569f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.9972f,-0.0034f,0.1065f,-0.0595f,0.0063f,2.1964f,0.1148f,3.3107f,-0.1063f,0.1262f,-1.9939f,0.8042f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.015f,0f,0f,0f,3.5838f,0f,0f,0f,-0.0554f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0284f,0f,0f,0f,-1.0285f,0f,0f,0f,-0.3186f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.9971f,-0.0207f,0.1065f,0f,-0.0127f,2.1963f,0.1148f,1.9914f,-0.1074f,0.1253f,-1.9939f,-0.1463f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7397f,0f,0f,0f,0.1755f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9863f,-0.234f,0.75f,0f,-0.234f,-1.9863f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-1.4382f,1.123f,-0.8188f,-1.4607f,1.1688f,1.6148f,0.1618f,2.0473f,0.7519f,-0.3622f,-1.8175f,1.3316f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.3869f,0.6325f,-0.2524f,-1.5631f,1.9506f,0.1149f,-0.2654f,2.4214f,-0.2137f,-0.0967f,-1.9662f,1.4214f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.3869f,1.9459f,-0.2524f,-1.6348f,1.9506f,0.3534f,-0.2654f,1.8757f,-0.2137f,-0.2975f,-1.9662f,1.25f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_right/apply
