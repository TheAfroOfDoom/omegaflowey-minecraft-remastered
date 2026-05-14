$data merge entity $(bone_eyes) {transformation: [-2.1944f,0f,0f,24.9988f,0f,1.6083f,-0.1289f,4.3771f,0f,-0.0946f,-2.1907f,-3.1942f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.1944f,0f,0f,24.9988f,0f,1.6083f,-0.1289f,4.7792f,0f,-0.0946f,-2.1907f,-3.2179f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,24.9988f,0f,0f,0f,5.0847f,0f,0f,0f,-4.1976f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,24.9988f,0f,0f,0f,1.7072f,0f,0f,0f,-3.9988f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2.1944f,0f,0f,24.9988f,0f,1.6083f,-0.1289f,3.9187f,0f,-0.0946f,-2.1907f,-4.129f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,24.9988f,0f,0f,0f,1.7072f,0f,0f,0f,-3.9988f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2.1944f,0f,0f,24.9988f,0f,1.6083f,-0.1289f,2.9135f,0f,-0.0946f,-2.1907f,-4.0698f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [0.532f,-2.12f,-0.1954f,26.9966f,0.193f,-0.0989f,1.5988f,3.7669f,-2.1f,-0.5547f,0.3006f,-4.5167f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-0.5993f,-2.102f,-0.1954f,27.2808f,0.1177f,-0.1822f,1.5988f,3.6693f,-2.096f,0.5696f,0.3006f,-4.3269f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-0.5993f,-2.102f,-0.1954f,27.1065f,0.1177f,-0.1822f,1.5988f,3.8986f,-2.096f,0.5696f,0.3006f,-4.8133f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [0.532f,2.12f,0.1954f,23.0009f,-0.193f,-0.0989f,1.5988f,3.8282f,2.1f,-0.5547f,0.3006f,-4.6792f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-0.5993f,2.102f,0.1954f,22.7167f,-0.1177f,-0.1822f,1.5988f,3.7307f,2.096f,0.5696f,0.3006f,-4.4894f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-0.5993f,2.102f,0.1954f,22.891f,-0.1177f,-0.1822f,1.5988f,3.9599f,2.096f,0.5696f,0.3006f,-4.9758f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,26.3703f,0f,0f,0f,3.5085f,0f,0f,0f,-4.2422f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,26.3703f,0f,0f,0f,3.5085f,0f,0f,0f,-4.2422f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,26.3703f,0f,0f,0f,3.5085f,0f,0f,0f,-4.2422f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/blinking/apply
