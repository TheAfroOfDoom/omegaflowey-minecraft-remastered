$data merge entity $(bone_eyes) {transformation: [-2.2615f,-0.0211f,-0.6659f,0.2738f,-0.1187f,0.5989f,0.0695f,2.4639f,0.7947f,0.0295f,-1.8846f,0.7401f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.8846f,-0.0702f,-0.6659f,0.262f,-0.099f,1.9963f,0.0695f,2.7983f,0.6623f,0.0984f,-1.8846f,0.7566f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0509f,0f,0f,0f,3.4426f,0f,0f,0f,-0.0377f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0966f,0f,0f,0f,-0.7497f,0f,0f,0f,-0.2443f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.8846f,-0.0702f,-0.6659f,0f,-0.099f,1.9963f,0.0695f,1.9952f,0.6623f,0.0984f,-1.8846f,-0.109f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7443f,0f,0f,0f,0.1308f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.9924f,-0.1744f,0.75f,0f,-0.1744f,-1.9924f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/blinking/apply
