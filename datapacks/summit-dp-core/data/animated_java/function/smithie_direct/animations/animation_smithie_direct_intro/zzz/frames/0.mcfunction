$data merge entity $(bone_eyes) {transformation: [-2f,0f,0f,-4f,0f,2f,0f,3.125f,0f,0f,-2f,0.875f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2f,0f,0f,-4f,0f,2f,0f,3.625f,0f,0f,-2f,0.875f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-4f,0f,0f,0f,4.075f,0f,0f,0f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,-4f,0f,0f,0f,-0.125f,0f,0f,0f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2f,0f,0f,-4f,0f,2f,0f,2.625f,0f,0f,-2f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,-4f,0f,0f,0f,-0.125f,0f,0f,0f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,-4f,0f,2f,0f,1.375f,0f,0f,-2f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_left) {transformation: [-1.4142f,0f,1.4142f,-2.6616f,1.4142f,0f,1.4142f,1.8598f,0f,2f,0f,0.0625f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_left) {transformation: [-1.4142f,0f,1.4142f,-2.5732f,1.4142f,0f,1.4142f,1.5947f,0f,2f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_left) {transformation: [-1.4142f,0f,1.4142f,-2.75f,1.4142f,0f,1.4142f,2.125f,0f,2f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-1.4142f,0f,-1.4142f,-5.3384f,-1.4142f,0f,1.4142f,1.8598f,0f,2f,0f,0.0625f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [-1.4142f,0f,-1.4142f,-5.4268f,-1.4142f,0f,1.4142f,1.5947f,0f,2f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [-1.4142f,0f,-1.4142f,-5.25f,-1.4142f,0f,1.4142f,2.125f,0f,2f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand) {transformation: [0f,0f,0f,-2.75f,0f,0f,0f,2.125f,0f,0f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_wrist) {transformation: [0f,0f,0f,-2.75f,0f,0f,0f,2.125f,0f,0f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_forearm) {transformation: [0f,0f,0f,-2.75f,0f,0f,0f,2.125f,0f,0f,0f,-0.125f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
