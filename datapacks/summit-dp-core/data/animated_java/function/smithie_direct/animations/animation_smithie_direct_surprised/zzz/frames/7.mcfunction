$data merge entity $(bone_eyes) {transformation: [-2.0363f,0.0337f,0.2688f,-0.111f,0.0209f,2.6374f,-0.0426f,2.5275f,-0.268f,-0.0505f,-2.0456f,0.7543f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2.0363f,0.0264f,0.2688f,-0.1011f,0.0209f,2.0631f,-0.0426f,3.3012f,-0.268f,-0.0395f,-2.0456f,0.7394f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,0.0191f,0f,0f,0f,3.4889f,0f,0f,0f,-0.1595f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,-0.0363f,0f,0f,0f,-0.8436f,0f,0f,0f,-0.0765f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2.0363f,0.0264f,0.2688f,0f,0.0209f,2.0631f,-0.0426f,1.9931f,-0.268f,-0.0395f,-2.0456f,-0.1308f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_chain) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.7418f,0f,0f,0f,0.157f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_body) {transformation: [-2f,0f,0f,0f,0f,1.989f,-0.2093f,0.75f,0f,-0.2093f,-1.989f,0f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/surprised_left/apply
