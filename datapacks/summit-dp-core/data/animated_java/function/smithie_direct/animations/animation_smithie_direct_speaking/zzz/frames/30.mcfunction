$data merge entity $(bone_eyes) {transformation: [-1.937f,-0.3142f,-0.4226f,0.1194f,-0.1861f,2.3339f,-0.3674f,2.6347f,0.462f,-0.3775f,-1.92f,0.5865f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.937f,-0.2619f,-0.4226f,0.0212f,-0.1861f,1.9449f,-0.3674f,3.364f,0.462f,-0.3146f,-1.92f,0.4686f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.1899f,0f,0f,0f,3.3978f,0f,0f,0f,-0.4029f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.3601f,0f,0f,0f,-0.6865f,0f,0f,0f,0.2577f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.937f,-0.2619f,-0.4226f,0f,-0.1861f,1.9449f,-0.3674f,1.9877f,0.462f,-0.3146f,-1.92f,-0.1748f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7353f,0f,0f,0f,0.2098f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9803f,-0.2797f,0.75f,0f,-0.2797f,-1.9803f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_thumb_right) {transformation: [-0.9327f,-1.6231f,0.7039f,-0.4228f,1.6673f,-1.0726f,-0.264f,2.1959f,0.5918f,0.4637f,1.8533f,1.0655f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_fingers_right) {transformation: [1.8833f,0.0904f,0.6672f,-0.238f,-0.025f,1.9899f,-0.1992f,2.0099f,-0.6728f,0.1792f,1.8749f,0.8466f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hand_right) {transformation: [1.8833f,0.0904f,0.6672f,-0.625f,-0.025f,1.9899f,-0.1992f,2f,-0.6728f,0.1792f,1.8749f,1.25f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/surprised_right/apply
