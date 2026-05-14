$data merge entity $(bone_eyes) {transformation: [-1.9997f,-0.0057f,0.032f,-0.0154f,-0.0042f,1.998f,0.0886f,2.4501f,-0.0322f,0.0885f,-1.9978f,0.733f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-1.9997f,-0.0057f,0.032f,-0.0169f,-0.0042f,1.998f,0.0886f,2.9632f,-0.0322f,0.0885f,-1.9978f,0.7557f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,-0.0041f,0f,0f,0f,3.4379f,0f,0f,0f,-0.099f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0.0078f,0f,0f,0f,-0.758f,0f,0f,0f,-0.2848f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-1.9997f,-0.0057f,0.032f,0f,-0.0042f,1.998f,0.0886f,1.9893f,-0.0322f,0.0885f,-1.9978f,-0.1632f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/default/apply
