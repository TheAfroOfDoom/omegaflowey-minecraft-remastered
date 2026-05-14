$data merge entity $(bone_eyes) {transformation: [-2.198f,-0.0527f,0.0777f,-0.0801f,-0.034f,1.5952f,0.1191f,2.5562f,-0.0814f,0.162f,-2.1925f,1.601f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.198f,-0.0527f,0.0777f,-0.0933f,-0.034f,1.5952f,0.1191f,2.955f,-0.0814f,0.162f,-2.1925f,1.6415f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0712f,0f,0f,0f,3.366f,0f,0f,0f,0.7187f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0395f,0f,0f,0f,0.0161f,0f,0f,0f,0.3785f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2.198f,-0.0527f,0.0777f,-0.0329f,-0.034f,1.5952f,0.1191f,2.2095f,-0.0814f,0.162f,-2.1925f,0.6013f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0.0395f,0f,0f,0f,0.0161f,0f,0f,0f,0.3785f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2.198f,-0.0527f,0.0777f,0f,-0.034f,1.5952f,0.1191f,1.2125f,-0.0814f,0.162f,-2.1925f,0.5f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-0.6176f,0.0784f,-0.1932f,2.0849f,0.1451f,0.2889f,-0.3467f,2.2706f,0.0605f,-0.5108f,-0.4004f,0.3243f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.5763f,0.2355f,-0.1932f,2.1349f,0.215f,0.2415f,-0.3467f,2.2211f,-0.0738f,-0.509f,-0.4004f,0.3813f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.5763f,0.2355f,-0.1932f,1.9787f,0.215f,0.2415f,-0.3467f,2.2531f,-0.0738f,-0.509f,-0.4004f,0.3378f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.5608f,2.125f,-0.0989f,-1.7964f,-0.2778f,0f,1.5757f,2.0733f,2.0928f,0.5694f,0.369f,0.7112f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.4664f,2.125f,-0.3266f,-2.059f,-0.9177f,0f,1.3106f,2.0385f,1.7407f,0.5694f,1.2189f,0.9212f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.5608f,2.125f,-0.0989f,-1.925f,-0.2778f,0f,1.5757f,2.2065f,2.0928f,0.5694f,0.369f,0.4211f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [-0.5032f,0.6512f,0.0833f,2.8405f,0.4735f,0.3699f,-0.0311f,2.2245f,-0.0849f,0.0396f,-0.8219f,0.5935f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [-0.3504f,0.7447f,0.0833f,2.2929f,0.5423f,0.2586f,-0.0311f,2.0136f,-0.0743f,0.057f,-0.8219f,0.553f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [-0.7313f,0.3775f,0.0833f,1.6398f,0.2728f,0.5353f,-0.0311f,2.215f,-0.0937f,0f,-0.8219f,0.3684f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/graceful/apply
