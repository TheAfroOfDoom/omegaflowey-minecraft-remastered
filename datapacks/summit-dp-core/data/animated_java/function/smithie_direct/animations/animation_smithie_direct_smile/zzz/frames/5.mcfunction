$data merge entity $(bone_eyes) {transformation: [-2f,0f,0f,0f,0f,0.373f,0.3407f,2.3066f,0f,0.0578f,-2.1988f,0.8711f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_eyebrows) {transformation: [-2f,0f,0f,0f,0f,1.8652f,0.3407f,2.6479f,0f,0.289f,-2.1988f,0.9239f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_hat) {transformation: [0f,0f,0f,0f,0f,0f,0f,3.3416f,0f,0f,0f,0.0464f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_glasses) {transformation: [0f,0f,0f,0f,0f,0f,0f,-0.5754f,0f,0f,0f,-0.5606f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
$data merge entity $(bone_head) {transformation: [-2f,0f,0f,0f,0f,1.8652f,0.3407f,1.9893f,0f,0.289f,-2.1988f,-0.1632f,0f,0f,0f,1f],start_interpolation: 0,interpolation_duration: 1}
execute on vehicle unless entity @s[tag=aj.transforms_only] run function animated_java:smithie_direct/variants/smiling/apply
