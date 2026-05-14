$data merge entity $(bone_eyes) {transformation: [-1.4582f,0.1931f,-1.2825f,12.48f,0.2645f,2.0806f,-0.0344f,3.5856f,1.2673f,-0.2092f,-1.4686f,0.4595f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.4582f,0.1931f,-1.2825f,12.5283f,0.2645f,2.0806f,-0.0344f,4.1057f,1.2673f,-0.2092f,-1.4686f,0.4072f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,12.0106f,0f,0f,0f,4.5587f,0f,0f,0f,-0.2824f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,11.6052f,0f,0f,0f,0.1896f,0f,0f,0f,0.1569f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.4582f,0.1931f,-1.2825f,11.8707f,0.2645f,2.0806f,-0.0344f,3.0503f,1.2673f,-0.2092f,-1.4686f,-0.1307f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,11.6052f,0f,0f,0f,0.1896f,0f,0f,0f,0.1569f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-1.4582f,0.1931f,-1.2825f,11.75f,0.2645f,2.0806f,-0.0344f,1.75f,1.2673f,-0.2092f,-1.4686f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-1.1539f,0.7766f,1.3689f,12.6835f,1.6245f,1.0412f,0.8227f,2.2181f,-0.3918f,1.4999f,-1.1847f,-0.7276f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.5479f,1.2784f,1.3689f,12.5465f,1.9295f,-0.0069f,0.8227f,1.9261f,0.4848f,1.4724f,-1.1847f,-0.8522f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.5479f,1.2784f,1.3689f,12.5807f,1.9295f,-0.0069f,0.8227f,2.5113f,0.4848f,1.4724f,-1.1847f,-0.879f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.5737f,1.5961f,-0.9654f,10.8287f,-1.5983f,0.2687f,1.3316f,2.5356f,1.1553f,1.0947f,1.1285f,0.8652f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.9669f,1.3934f,-0.9654f,10.6375f,-1.6134f,-0.1537f,1.3316f,2.2651f,0.8329f,1.3563f,1.1285f,0.7717f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.9669f,1.3934f,-0.9654f,10.7586f,-1.6134f,-0.1537f,1.3316f,2.8349f,0.8329f,1.3563f,1.1285f,0.7045f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,12.661f,0f,0f,0f,2.3737f,0f,0f,0f,-0.9495f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,12.661f,0f,0f,0f,2.3737f,0f,0f,0f,-0.9495f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,12.661f,0f,0f,0f,2.3737f,0f,0f,0f,-0.9495f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/happy_left/apply
