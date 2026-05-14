$data merge entity $(bone_eyes) {transformation: [-1.937f,-0.2616f,-0.4226f,0.1164f,-0.1866f,1.943f,-0.3654f,2.6332f,0.4618f,-0.3122f,-1.9204f,0.5893f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.9379f,-0.255f,-0.4226f,0.0541f,-0.1799f,1.9436f,-0.3654f,3.1192f,0.4607f,-0.3137f,-1.9204f,0.5106f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.1896f,0f,0f,0f,3.3965f,0f,0f,0f,-0.3998f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.3596f,0f,0f,0f,-0.6837f,0f,0f,0f,0.2557f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.937f,-0.2616f,-0.4226f,0f,-0.1866f,1.943f,-0.3654f,1.9879f,0.4618f,-0.3122f,-1.9204f,-0.1735f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7355f,0f,0f,0f,0.2082f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9806f,-0.2777f,0.75f,0f,-0.2777f,-1.9806f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.4801f,-1.8233f,0.6672f,-0.4228f,1.9053f,-0.5746f,-0.1992f,2.1959f,0.3733f,0.5878f,1.8749f,1.0655f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [1.8833f,0.0904f,0.6672f,-0.2376f,-0.025f,1.9899f,-0.1992f,2.0187f,-0.6728f,0.1792f,1.8749f,0.8474f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [1.8833f,0.0904f,0.6672f,-0.625f,-0.025f,1.9899f,-0.1992f,2f,-0.6728f,0.1792f,1.8749f,1.25f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/surprised/apply
